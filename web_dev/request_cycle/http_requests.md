# HTTP response status codes

**100 Range**

Any response in the 100 range is an "information" response. It's really like interim responses saying that the client machine can continue, or there's a protocol switch happening.

**200 Range**

All responses in the 200 range mean that the request was received by the server and is being processed accordingly. The main 200 code has a different exact meaning of success depending on the HTTP method: GET, HEAD, POST, TRACE.

**300 Range**

Responses in this range indicate there is some sort of redirect or multiple options for responses. Sometimes a redirect is temporary and sometimes it's permanent.

**400 Range**

This includes a LOT of very specific response messages but it all has to do with errors on the client. Code 400 means the server could not understand the initial request due to invalid syntax. Sometimes the client is not authorized to access certain files. Error code 404 is a common one which means the requested file/directory was not found on the server. Error code 405 means the HTTP method was not accepted, although GET and HEAD should NEVER be disabled.

**500 Range**

These are server error responses. The basic 500 code means the server encountered some internal issue and it doesn't know how to continue. Code 503 is a common one that often means the server is down for maintenance or simply overloaded. 