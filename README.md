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

In order for you custom handler class to be used by the RestBridge, you will need to set the **REST_OUTPUT_HANDLER** option either in your config.bbx or in the bridge's servlet parameters. The value of this option should be the file name of the custom output handler class. The file name **must** have the same name as the class itself. The RestBridge will invoke the class if the file can be founn on the system using the standard BBj file resolve mechanics(Working Directory, Prefix)  

