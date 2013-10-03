REST is new way of linking pages and creating pages
it is NOT files!

HTTP/TCP/IP

RSET ---> HTTP
is a string being sent back and forth
HTTP request has 2 components client-HEAD & BODY > server-HEAD & BODY
VERBS=           PATH= /something

*PATHS always go into the request HEAD*

GET   getting a resouce on a server    GET resources on a server a Host - A Resouce, A Sub-Resource
POST  creating a resource on a server                          
PUT
DELETE

Lets create:
/stocks?symbol=GOOG
will return the stock price

person will only pass a parameter : the stock symbol (user will only be comnsuming)
parameter or query string

          request 
 head       PATH
           VERB
         query params

 body      params


