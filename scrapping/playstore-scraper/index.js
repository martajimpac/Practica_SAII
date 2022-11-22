const PORT = 8000;
/** To use the installed packages we need to require them */
const axios = require("axios");
const cheerio = require("cheerio");
const { response } = require("express");
const express = require("express");

/** Array with keywords to find in the HTML page */
const keys = [" contact", " email", " location", " pay", " search", " error", " photo", " address book", " use", " language", " IP address"];

const fs = require('fs');
const writeStream = fs.createWriteStream('playStore.csv');

/** To use Express, once required, we must call it */
const app = express();

/** Array containing the urls to be used to get apps details */
const urls = [
    "https://play.google.com/store/apps/details?id=com.whatsapp&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=com.google.android.gm&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=com.microsoft.office.outlook&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=com.discord&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=org.telegram.messenger&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=com.instagram.android&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=com.facebook.katana&hl=es&gl=US",
    "https://play.google.com/store/apps/details?id=com.zhiliaoapp.musically&hl=es_419&gl=US",
    "https://play.google.com/store/apps/details?id=com.linkedin.android&hl=es_419&gl=US",
    "https://play.google.com/store/apps/details?id=com.snapchat.android&hl=es_419&gl=US",
];

/** Array containing the urls to be used to get what user data the apps use */
const privacyUrls = [
    "https://www.whatsapp.com/legal/privacy-policy-eea?lang=en",
    "https://policies.google.com/privacy",
    "https://privacy.microsoft.com/en-us/privacystatement",
    "https://discord.com/privacy",
    "https://telegram.org/privacy",
    "https://help.instagram.com/519522125107875/",
    "https://www.facebook.com/about/privacy",
    "https://www.tiktok.com/legal/privacy-policy-eea",
    "https://www.linkedin.com/legal/privacy-policy",
    "https://snap.com/en-US/privacy/privacy-policy"
];

/** Array containing classes of the various pages from which information can be obtained.
 * Elements ordered using privacyUrls order */
const privacyHtmlClasses = [
    "._8l_f",   // WhatsApp div class
    ".nrAB0c",  // Gmail div class
    ".div_content",   // Outlook div class
    ".document-25D7S4", // Discord div class
    ".tl_page", // Telegram div class
    ".gh1tjcio", // Instagram div class (Does not work cause of url [empty result])
    "._xpr",   // Facebook div class (Dose not work so good [few words found even though present])
    ".jsx-526282746",   // TikTok div class
    ".standalone-list", // Linkedin ol class
    ".RichTextBodyContainer-sc-1mnh17e", // Snapchat div class
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
        let category;
        let operatingSystem;
        let ageRestriction;
        let url;
        let version;
        let date;
        let infoTerceros = "TODO";
        let advertising;
        let text;   // auxiliary var
        
        /** Arrays for storing data for the tables */
        let apps = [];  // for Apps Table
        let privacy = [];   // for Privacy Table
        let collectedData = []; // for User Data Collected Table
        let privacyData = [];   // for User Data Collected Table

        /** Code to get app's name.
         * We are going to pick up from the html whatever class is specificied after the dot sign */
        name = $(".AHFaub").text();

        /** Code to get app's category */
        category = $("a.hrTbp.R8zArc").parent().next().text();

        /** Url obtained from the privacyUrls array to avoid errors */
        url = privacyUrls[i];

        /** By selecting the following class in the html page, 
         * it is possible to tell whether the app contains advertising elements or not */
        ($(".bSIuKf").text() != "") ? (advertising = true) : (advertising = false);

        /** Code to get the app date, version, operating system and age restriction.
         * All of them have the same html class, so we iterate through the class and get them by index */
         $(".htlgb", html).each((i, el) => {
            if (i == 0) date = $(el).text();
            if (i == 6) version = $(el).text();
            if (i == 8) operatingSystem = $(el).text();
            if (i == 10) ageRestriction = $(el).text().slice(0, -15);
        });


        /** ------ APPS TABLE ------ */

        apps.push({
            name,
            operatingSystem,
            category,
            ageRestriction,
        });
        console.log("Apps");
        console.log(apps);

        /** Write Row To CSV */
        writeStream.write(`Nombre,Sistema Operativo,Area, Restriccion Edad\n`);
        writeStream.write(`${name},${operatingSystem},${category},${ageRestriction}\n`);
        writeStream.write(`\n`);

        console.log("");


        /** ------ PRIVACY TABLE ------ */

        privacy.push({
            name,
            version,
            date,
            infoTerceros,
            advertising,
            url,
        });
        console.log("Privacy");
        console.log(privacy);

        /** Write Row To CSV */
        writeStream.write(`Nombre App,Version App,Fecha Ultima Actualizacion,Informacion a Terceros,Publicidad,Url Politica Privacidad\n`);
        writeStream.write(`${name},${version},${date},${infoTerceros},${advertising},${url}\n`);
        writeStream.write(`\n`);

        console.log("");


        /** ------ USER DATA COLLECTED TABLE ------ */

        axios(privacyUrls[i])
        .then((response) => {
            /** In this way we are going to print on terminal all that axios has given us, that is all the html of the page indicated by url */
            const html = response.data;

            /** We can pick up some specific path with Cheerio.
             * load will allow us to pass through the html */
            const $ = cheerio.load(html);
            /** Array of 11 elements (true or false) like DatosDeUsuarios's privacy options */
            privacyData = [];

            /** Loop that allows us to check for the class specified by urlClasses 
             * whether or not each of the keys elements is present in the current url */
            for (let j = 0; j < 11; j++) {
                $(privacyHtmlClasses[i], html).each(function () {
                    text = $(this).text();
                    if (text.includes(keys[j])) {
                        privacyData[j] = true;
                    }
                    else if (privacyData[j] == null){
                        privacyData[j] = false;
                    }
                });
            }

            collectedData.push({
                name,
                version,
                privacyData
            });
            console.log("User Data Collected");
            console.log(collectedData);

            /** Write Row To CSV */
            writeStream.write(`Nombre App,Version App,Contacto,Credenciales,Demografia,Pagos,Historial de Busquedas,Informes de Errores,Multimedia,Agenda,Informacion De Uso,Idioma,Informacion Sobre el Dispositivo\n`);
            writeStream.write(`${name},${version},${privacyData}\n`);
            writeStream.write(`\n`);

            console.log("");

        })
        .catch((err) => console.log("ERROR" + err)); /** To catch errors and print them out */

        console.log("\n");
    })
    .catch((err) => console.log("ERROR" + err)); /** To catch errors and print them out */

    /** Delay to avoid blocking of GET requests */
    var delayInMilliseconds = 1000; //1 second
    setTimeout(function() {
    /** Your code to be executed after 1 second */
    }, delayInMilliseconds);
}

/** To listen out to the PORT using Express.
 * If our server is running correctly on the specified port, we print the following message in the console */
app.listen(PORT, () => console.log("server running on PORT ${PORT}"));
