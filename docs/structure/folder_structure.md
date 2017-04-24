| Name | Description | 
|----------|------------|
| [config](#1-config) | This folder holds Javascript files which hold information to configure the website |
| [controllers](#2-controllers) | This folder holds all Javascript files which contain the programm logic|
| [models](#3-models) | This folder contains Files which define the structure of data the programm expects |
| [public](#4-public) | This folder cointains the website which displays information and has an User Interface to interact with the API Interface |
| [routes](#5-routes) | Here are all routes defined which the REST-API listens to. |
| [templates](#6-templates) | In this folder are templates for e.g. letters send by email |

Files:

| Name | Description | 
|----------|------------|
| package.json | All included nodejs packages |
| server.js | Here the Programm is started. To start the programm use the following command|
	
```
	$ nodejs server.js --api_port <<port>> --database_name <<name>> --postgres_user <<user>> --postgres_password <<password>> --email_user <<email>> --email_password <<email_password>>
```

### 1. Config



### 2. controllers

| Name | Description | 
|----------|------------|
| [admin](#1-admin) | All logic regarding the admin |
| [apps](#2-apps) | All logic regarding the apps |
| [categories](#3-categories) | All logic regarding categories |
| [connectors](#4-connectors) | Here are connectors which connect to external databases |
| [dataset](#5-dataset) | All logic regarding datasets |
| [logs](#6-logs) | All logic regarding the logs |
| [main_database](#1-main_database) | All logic regarding the main_database |
| [query](#2-query) | Here is the logic to query the database |
| [spatial](#3-spatial) | Work in Progress. In here lies the logic to scan datasets for spatial information and store them in a database |
| [stats](#4-stats) | Here are statistical data generated and given back to the user |
| [sub_database](#5-sub_database) | All logic regarding sub_database |
| [submit](#6-submit) | Here is the logic to submit new datasets |
| [tags](#5-tags) | All logic regarding tags |
| [update](#6-update) | Here is the logic to update existing datasets |


Files:



### 3. models


### 4. public

| Name | Description | 
|----------|------------|
| [configure](#1-configure) | Side for Admins to configure and add their datasets |
| [css](#2-css) | All styling for this website |
| [img](#3-img) | All images needed |
| [js](#4-js) | All Javascript files |
| [lib](#5-lib) | External libraries which are used by this website |
| [map](#6-map) | Side with a map for displaying visitors |

### 5. routes


### 6. templates