


# Create you own API key



1. Visit the Open City Toolkit page: 

[http://giv-oct.uni-muenster.de:8081/](http://giv-oct.uni-muenster.de:8081/)

![alt text](https://github.com/geo-c/OCT-Core-Docs/blob/master/docs/tutorial/1_AppKeyFigures/GetAPIKeyForm1.png "Main Page Apps")


2. Select *Get an API Key*. An empty from will open.  

![alt text](https://raw.githubusercontent.com/geo-c/OCT-Core-Docs/master/docs/tutorial/1_AppKey/1_AppKeyFigures/GetAPIKeyForm1.png "Empty Form")

3. Fillin the form with App details

![alt text](https://raw.githubusercontent.com/geo-c/OCT-Core-Docs/master/docs/tutorial/1_AppKey/1_AppKeyFigures/GetAPIKeyForm2.png "Sample Form")

4. Apply and you will get your API Key 


![alt text](https://raw.githubusercontent.com/geo-c/OCT-Core-Docs/master/docs/tutorial/1_AppKey/1_AppKeyFigures/GetAPIKeyForm3.png "Sample API Key")


Your key has also been sent to your email address

The URL of the API is: http://giv-oct.uni-muenster.de:8080/api/

You can query the databases with http://giv-oct.uni-muenster.de:8080/api/query/**:categoryname:**?authorization=**YourAPIKey**


5. Use the API Key 


When you enter the following get request in you browser you get the JSON responce 
[http://giv-oct.uni-muenster.de:8080/api/query/Traffic?authorization=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfbmFtZSI6Ik1heCIsImlhdCI6MTQ3NDk4MzcwMX0.gaJOuK6yPO0s8CaMDHsYCvf0i6bnzDqLR2JO5krdBAs](http://giv-oct.uni-muenster.de:8080/api/query/Traffic?authorization=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfbmFtZSI6Ik1heCIsImlhdCI6MTQ3NDk4MzcwMX0.gaJOuK6yPO0s8CaMDHsYCvf0i6bnzDqLR2JO5krdBAs)

![alt text](http://giv-oct.uni-muenster.de:8080/docs/tutorial/1_AppKey/1_AppKeyFigures/GetAPIKeyUseKey.png "JSON Request Traffic")

You can change the query for example to *Social*.
[http://giv-oct.uni-muenster.de:8080/api/query/Social?authorization=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfbmFtZSI6Ik1heCIsImlhdCI6MTQ3NDk4MzcwMX0.gaJOuK6yPO0s8CaMDHsYCvf0i6bnzDqLR2JO5krdBAs](http://giv-oct.uni-muenster.de:8080/api/query/Social?authorization=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcHBfbmFtZSI6Ik1heCIsImlhdCI6MTQ3NDk4MzcwMX0.gaJOuK6yPO0s8CaMDHsYCvf0i6bnzDqLR2JO5krdBAs)

As responce you will get an other data collection

![alt text](https://raw.githubusercontent.com/geo-c/OCT-Core-Docs/master/docs/tutorial/1_AppKey/1_AppKeyFigures/GetAPIKeyUseKeyQuerySocialSmal.png "JSON Request Social")






Further request you will find hier: [http://giv-oct.uni-muenster.de:8080/docs/architecture/rest-api/](http://giv-oct.uni-muenster.de:8080/docs/architecture/rest-api/)



 [Next --> Use a Database](http://giv-oct.uni-muenster.de:8080/docs/tutorial/2_DatabaseJson/)
