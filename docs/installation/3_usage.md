***Usage***

* **Start the Server**
```
$ cd ~/OCT-Core
$ node server.js --api_port [port] --database_name [db_name] --postgres_user [db_user] --postgres_password [db_password] --email_user [email_user] --email_password [email_password]
```

* **[port]** : Port the API listens to

* **[db_name]** : Name of the PostgreSQL Database

* **[db_user]** : User of the PostgreSQL Database

* **[db_password]** : Password of the PostgreSQL Database

* **[email_user]** : Email Address from where Regestration Messages are sent

* **[email_password]** : Password for Email Account


<br>To Run the Server you can use the Node Module forever

```
$ cd ~/OCT-Core
$ forever start server.js --api_port [port] --database_name [db_name] --postgres_user [db_user] --postgres_password [db_password] --email_user [email_user] --email_password [email_password]
```

<br><br>

* **Stop the Server**
```
$ cd ~/OCT-Core
$ forever stop server.js
```


