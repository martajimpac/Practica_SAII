# Web scraper for Play Store
### Web scraping algorithm for Play Store (Google) developed using JavaScript language
# PROJECT
The main purpose of this algorithm is to obtain information about the user data that some applications use in an automated way.<br/>

The algorithm was developed for educational purposes only, and the data obtained served only to show the correct operation of what was coded.<br/>
No data was retained or used for any other purpose.

## COMMENTS
### package.json
It is created by `npm init` and it allows us to install packages or modules into our project.<br/>
All the packages available can be seen at npmjs.com.<br/>
Every project that uses Node.js needs a package.json file.<br/>
*version* is 1.0.0 because this is the first version of our app<br/>
It is necessary to create the file indicated by *main* because it contains the information that will allow the launch of our app.<br/>

| Used packages | Command to install | Description |
|---------------|--------------------|-------------|
| *express*     | `npm i express`    | It is a back-end framework for Node.js and is used to listen to path and listen out to our port to make sure everything is working properly.<br/>That is, if we visit a path or URL, it will run some code and listen out to the port we defined.|
| *cheerio*     | `npm i cheerio`    | Package essentially used to pick up html elements on a web page.<br/>It works by passing markup and provides an API for traversing and manipulating resulting data structure.<br/>Cheerio's selector implementation is similar to jQuery. |
| *axios*       | `npm i axios`      | It is a promise based http client for the browser and Node.js. It makes it easy to send http request to rest endpoints and perform CRUD operations, so we can get, post, put, and delete data. |<br/>

The *script* called *start* is important to use the command `npm run start` and, as it is defined, it allows us to listen out to changes on the index.js file.<br/>It is possible thanks to *nodemon*.

### Notes
If something doesn't work, check:
- The version of your packages shown in the package.json file probably it is different from the one installed.
To correct this problem simply delete the package version and run `npm i`.
This command will reinstall the packages and create a package-log.json file.
This file has been generated since we installed the dependency and if you look inside of it you will find all your packages with their version as well as which registry they have been installed from.
- The version of Node.js installed could be uncompatible.
Check the installed version via `node -v` and reinstall, if necessary, the correct one via `nvm install [version]`.
To use the newly installed version of Node.js use the command `nvm use [version]`.
