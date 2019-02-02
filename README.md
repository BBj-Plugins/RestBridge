This plugin allows you to deploy BBj or Java classes that follow the development paradigm of "BusinessComponents" as a RESTful web service. It features GET,POST,PUT,DELETE operations that are automatically translated to read, write and remove operation methods in your code.

See https://github.com/BasisHub/ChileCompany for a first naive sample implementation of a BC class on ChileCompany. 



# Options

You can add the following options to your config.bbx to toggle certain behavior. The lines show the defaults that also apply when the entry is absent.

## SET RESTBRIDGE_OPT_JSONMETA=1

If set to 1 (default), the toJson method will always include the meta data used for serialization and deserialization in the basiscomponents ResultSet class. Set it to 0 if you would like to disable sending the meta data object.

## SET RESTBRIDGE_OPT_ENABLEGZIP=1

If set to 1 (default), the RestBridge tries to serve gzip content when the according "Accept-Encoding" header contains the tag "gzip". Note that only gzip is supported by the plug-in. If you do never wish to deliver compressed content, e.g. for compatibility reasons or for debugging purpose, set this toggle to "0".

 