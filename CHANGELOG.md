## Change Log

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- An input handler class was added to modify the incoming data(Request body, parameters and headers).
- Adding BBj unit test classes to validate the GET, POST and PUT requests.
- Adding a unit test setup class that creates a new RestBridge mapping for all tests.
- Adding a Postman collection to demonstrate the structure and also to test the HTTP requests(Currently it only contains the DELETE requests).

### Changed
- When invoking GET requests, the RestBridge will now always invoke the requested BC's setScope(), setFieldSelection() and setFilter() methods.
- Invalid PUT and DELETE requests now result in a 400(BAD REQUEST).
- Invalid paging(_OFFSET, _LIMIT, _PAGE,_PER_PAGE) requests now result in a 400(BAD REQUEST).
- When attempting to invoke a custom BC method with invalid parameters and error 400(BAD REQUEST) is returned.
- Attempting to invoke a non existing BC results in a 404(NOT FOUND).
- When performing a lookup request, by default the BusinessComponent's getLookupData() method will be invoked, using the retrieveLookup() as a fallback. The retrieveLookup() method is not defined in the BusinessComponent interface, and will likely be removed in future versions.
- DELETE Request don't need to have a body when using the correct trailing routes
- The RestBridge attempts to invoke the write(ResultSet) / remove(ResultSet) for the POST, PUT and DELETE requests and falls back to the write(DataRow) / remove(DataRow) methods if they do not exist
- Obfuscating the Authorization header when saving it in the REQUESTLOG file(issue #23)

### Removed

## [1.10] - 2020-06-10

### Added
- Adding **/Ping** endpoint
- Adding an OutputHandler class to handle the responses created by the RestBridge
- Implementing the HMAC authentication 

### Changed
- The RestBridge now uses UTF-8 by default
- Improved the charset conversion 

### Removed