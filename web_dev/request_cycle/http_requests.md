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

# Difference between GET & POST method

The GET method is simply a request to the server to *retrieve* some data. The GET method is commonly used to just retrieve website files (HTML/CSS/JavaScript) that are needed to display on a client's machine. On the other side, the POST method is used to *send* data to the server. The POST method is most commonly used to submit HTML forms.

# What is an HTTP cookie?

According to [MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies), it's a "small piece of data that a server sends to the user's web browser." The cookie can be stored on the user's machine so that when they access the site again it lets the server know the requests are coming from the same browser. This is what allows a website to keep a user logged-in but it also allows the tracking over user behavior on a website. The other main use for cookies is for user preferences that were set from a previous visit to the website.