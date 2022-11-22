const PORT = 8000;
/** To use the installed packages we need to require them */
const axios = require("axios");
const cheerio = require("cheerio");
const { response } = require("express");
const express = require("express");

const fs = require('fs');
const writeStream = fs.createWriteStream('appStore.csv');

/** To use Express, once required, we must call it */
const app = express();

const urls = [
    "https://apps.apple.com/es/app/whatsapp-messenger/id310633997",
    "https://apps.apple.com/es/app/gmail-el-correo-de-google/id422689480",
    "https://apps.apple.com/es/app/microsoft-outlook/id951937596",
    "https://apps.apple.com/es/app/discord-chatea-habla-y-une/id985746746",
    "https://apps.apple.com/es/app/telegram-messenger/id686449807",
    "https://apps.apple.com/es/app/instagram/id389801252",
    "https://apps.apple.com/es/app/facebook/id284882215",
    "https://apps.apple.com/es/app/tiktok-videos-m%C3%BAsica/id835599320",
    "https://apps.apple.com/es/app/linkedin-b%C3%BAsqueda-de-empleo/id288429040",
    "https://apps.apple.com/es/app/snapchat/id447188370"
];

/** Axios works passing through an url and it visits the url and then we get the response from it.
 * Then, we save the response in some html that we can work with */
for (let i = 0; i < urls.length; i++) {
    axios(urls[i])
    .then((response) => {
        /** In this way we are going to print on terminal all that axios has given us, that is all the html of the page indicated by url */
        const html = response.data;

        /** We can pick up some specific path with Cheerio.
         * load will allow us to pass through the html */
        const $ = cheerio.load(html);

        /** Variables declaration */
        let name;
        let size;
        let category;
        let operatingSystem;
        let ageRestriction;
        let url;
        let version;
        let date;
        let privacyType;

        /** Arrays for storing data for the tables */
        let apps = [];  // for Apps Table
        let privacy = [];   // for Privacy Table
        let collectedData = []; // for User Data Collected Table
        let privacyData = [];   // for User Data Collected Table
        let privacyDataBooleans = [];    // for User Data Collected Table

        /** Code to get app's name from its url */
        name = urls[i].substring(30);
        name = name.substring(0, name.indexOf("/"));
        if (name.includes("-"))
            name = name.substring (0, name.indexOf("-"));
        

        /** ------ APPS TABLE ------ */

        /** Code to get operating system version.
         * We are going to pick up from the html whatever class is specificied after the dot sign */
        operatingSystem = $(".information-list__item__definition__item__definition").first().text();
        operatingSystem = operatingSystem.replace(/(\n)/gm, "").trim();
        operatingSystem = operatingSystem.slice(0, -1); // deletes dot at end of string

        /** Code to get size and category.
         * We are going to pick up from the html whatever class is specificied after the dot sign,
         * and iterating throw the elements of that class */
        $("dd.information-list__item__definition", html).each((i, el) => {
            if (i == 1) {
                size = $(el).text();
                size = size.replace(",", ".");  // useful for .csv file
            }
            if (i == 2) category = $(el).text();
        });
        category = category.replace(/(\n)/gm, "").trim();

        /** Code to get the age restriction */
        ageRestriction = $(".badge.badge--product-title").html();

        apps.push({
            name,
            operatingSystem,
            category,
            size,
            ageRestriction,
        });
        console.log("Apps");
        console.log(apps);
        
        /** Write Row To CSV */
        writeStream.write(`Nombre,Sistema Operativo,Categoria,Tamano,Restriccion Edad\n`);
        writeStream.write(`${name},${operatingSystem},${category},${size},${ageRestriction}\n`);
        writeStream.write(`\n`);

        console.log("");


        /** ------ PRIVACY TABLE ------ */
         
        /** Code to get url of the privacy policy */
        url = $(".link.icon.icon-after.icon-external").last().parent().html();
        const index1 = url.indexOf("href=\"");
        const index2 = url.indexOf("\">");
        url = url.slice(index1+6, index2);

        /** Code to get app's last version and the day it was launched */
        version = $(".l-column.small-6.medium-12.whats-new__latest__version").text();
        date = $(".l-column.small-6.medium-12.whats-new__latest__version").parent().text();
        date = date.slice(13,24);

        privacy.push({
            name,
            version,
            date,
            url,
        });
        console.log("Privacy");
        console.log(privacy);

        /** Write Row To CSV */
        writeStream.write(`Nombre App,Version,Fecha Acualizacion,UrlPoliticaPrivacidad\n`);
        writeStream.write(`${name},${version},${date},${url}\n`);
        writeStream.write(`\n`);

        console.log("");
     

        /** ------ USER DATA COLLECTED TABLE ------ */

        /** Auxiliary array to save the collected data correctly in the .csv file */
        let keys = [
            "Datos de contacto", "Salud y forma física", "Información financiera", "Ubicación",
            "Datos sensibles", "Contactos", "Contenido del usuario", "Historial de búsqueda",
            "Historial de navegación", "Identificado­res", "Compras", "Datos de uso", "Diagnósticos"
        ];        

        /** Each type of data is in a different div, so we iterate through then with the div id */
        $(".app-privacy__card").each((i, el) =>  {

            /** Code to get the data type */
            privacyType = $(el).find("h3.privacy-type__heading").text();

            /** Code to get all the data collected from each type */
            privacyData = [];
            $(el).find(".privacy-type__grid-content.privacy-type__data-category-heading").each((i, el2) => {
                privacyData.push($(el2).text());
            });

            /** Conversion of collected data to true or false */
            privacyDataBooleans = [];
            for (let j = 0; j < keys.length; j++) {
                privacyData.includes(keys[j]) ? (privacyDataBooleans[j] = true) : (privacyDataBooleans[j] = false);
            }

            collectedData.push({
                name,
                version,
                privacyType,
                privacyDataBooleans
            });
            
            /** Write Row To CSV */
            writeStream.write(`Nombre App,Version App,Tipo,Datos Contacto,Salud Fitness,Info FInanciera,Ubicacion,Info SEnsitiva,Contactos,Contenido Usuario,Historial Busqueda,Historial Navegacion,Identificadores,CoMpras,Datos Uso,Diagnostico\n`);
            writeStream.write(`${name},${version},${privacyType},${privacyDataBooleans}\n`);
            writeStream.write(`\n`);
        });
        console.log("User Data Collected");
        console.log(collectedData);

        console.log("\n");
    })
    .catch((err) => console.log(err)); /** To catch errors and print them out */

    /** Delay to avoid blocking of GET requests */
    var delayInMilliseconds = 1000; //1 second
    setTimeout(function() {
    /** Your code to be executed after 1 second */
    }, delayInMilliseconds);
}

/** To listen out to the PORT using Express.
 * If our server is running correctly on the specified port, we print the following message in the console */
app.listen(PORT, () => console.log("server running on PORT ${PORT}"));
