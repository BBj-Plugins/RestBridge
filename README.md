This plugin allows you to deploy BBj or Java classes that follow the development paradigm of "BusinessComponents" as a RESTful web service. It features GET,POST,PUT,DELETE operations that are automatically translated to read, write and remove operation methods in your code.

See https://github.com/BasisHub/ChileCompany for a first naive sample implementation of a BC class on ChileCompany. 

## Options

You can add the following options to your config.bbx to toggle certain behavior. The lines show the defaults that also apply when the entry is absent.

### SET RESTBRIDGE_OPT_JSONMETA=1

If set to 1 (default), the toJson method will always include the meta data used for serialization and deserialization in the basiscomponents ResultSet class. Set it to 0 if you would like to disable sending the meta data object.

### SET RESTBRIDGE_OPT_ENABLEGZIP=1

If set to 1 (default), the RestBridge tries to serve gzip content when the according "Accept-Encoding" header contains the tag "gzip". Note that only gzip is supported by the plug-in. If you do never wish to deliver compressed content, e.g. for compatibility reasons or for debugging purpose, set this toggle to "0".

## Output Handling

The data conversion of the RestBridge has been extracted into a separate class called <code>OutputHandler</code>. This class evaluates the accept header of the client request and converts the ResultSet returned by the BC into the requested type. Currently the class can convert the data into the following types:

| Accept Header    | Data Format |
|------------------|-------------|
| text/csv         |     TEXT    |
| text/plain       |     TEXT    |
| text/html        |     HTML    |
| text/xml         |     XML     |
| application/xml  |     XML     |
| application/xls  |     XLSX    |
| application/json |     JSON    |      

By defining a custom output handler you can extend that list and handle custom MIME-Types as well. To do so, create a class which extends the RestBridge's <code>OutputHandler</code> class, and override the <code>createContent(String)</code> method. By overriding this method you can handle the data conversion based on the accept header value yourself. You class will then look like the following:

```
use ::RestBridge/OutputHandler.bbj::OutputHandler

class public CustomOutputHandler extends OutputHandler

    method public CustomOutputHandler(BBjNumber debug)
        #super!(debug)
    methodend

    rem /**
    rem  * Creates the output based on the given accept header and returns it 
    rem  * as String. The method return an empty String if the content is returned 
    rem  * in a different way, for example per file download.
    rem  * 
    rem  * @param accept! The accept header sent by the client for the given request
    rem  * @return the content in the requested format or an empty string if the 
    rem  *         content was returned using a file download for instance.
    rem  */
    method public String createContent(String accept!)
        rem Convert the ResultSet into the requested type based on the accept! value
        rem and return it as String

        rem fallback to the standard output handler in case the MIME type is unknown
        methodret #super!.createContent(accept!)
    methodend

classend
```

In order for you custom handler class to be used by the RestBridge, you will need to set the **REST_OUTPUT_HANDLER** option either in your config.bbx or in the bridge's servlet parameters. The value of this option should be the file name of the custom output handler class. The file name **must** have the same name as the class itself. The RestBridge will invoke the class if the file can be found on the system using the standard BBj file resolve mechanics(Working Directory, Prefix)  

## **_lookup** Request

In some cases, BC fields can only be set to pre-defined values(tipically represented by a DropDown Button on the client). To get the list of available values for a specific field, the **_lookup** request is used.

The **_lookup** call will invoke the BC's <code>retrieveLookup(field$,filter!)</code> method, and return the returned ResultSet. 

A tipical **_lookup** call looks like this (Using HTTP GET):

<code><base_url>/BC/_lookup/LookupField</code>

and it even supports filters:

<code><base_url>/BC/_lookup/LookupField?Key=Value</code>

## Debuggging

Debugging the RestBridge can be done by setting DEBUG=1 in the RestBridge's config.bbx. Running the RestBridge in debug mode will cause more information to be printed in the Debug.log file and it will also cause the RestBridge to log internal errors into a newly created log file called **bridgeerrlog.txt** saved in the RestBridge's working directory. 

### Request Logging

Once enabled, the request logging will cause the RestBridge to log the following information per incoming request: 
- The request's HTTP method(GET, POST, PUT, DELETE, etc..) 
- The time it took to complete the request(start/end timestamps, duration)
- The client's IP address
- The request's URL and URI
- The request's query parameters
- The request's headers
- The response status (HTTP Codes)

To enable the request logging, you will need to set the **REST_REQUESTLOG** variable in the RestBridge's config.bbx, and set the value to the path of the data file in which to store the reqest information. The RestBridge ships with an empty data file created for this exact purpose. You can copy the data file(**RestBridge/RequestLog/REQUESTLOG**) and the matching data dictionnary(**RestBridge/RequestLog/DD**) to your desired location and set the **REST_REQUESTLOG** value to the data file's new location. Additionally you can create a new database in the Enterprise Manager using the data dictionary and the data file to read and modify the content of the REQUESTLOG file using SQL.

The data file used to save the requests currently has the following template:
**ID:C(16*),METHOD:C(1*),START:N(1*),END:N(1*),DURATION:N(1*),ADDR:C(1*),URL:C(1*),URI:C(1*),QUERY:C(1*),HEADERS:C(1*),PARAMS:C(1*),STATUS:C(1*)**

The saved request information can be viewed using the Enterprise Manager(if configured) or by invoking the **/admin/requestlog** endpoint
http://MyServer/MyContext/MyMapping/admin/requestlog
