library(httr)
library(jsonlite)
?jsonlite
?httr

#Here is the sign in for the session. My username and password
UserName <- "camethster101"
Password <- "&StayingSober365"

#API General URL and Session URL assigned
API <- "https://favqs.com/api"
API_Sess <- "https://favqs.com/api/session"
API_user <- "https://favqs.com/api/users/:login"

#Trying to acess
Http_Token <- GET(url = API_Sess, authenticate(UserName,Password))
Http_Token
fromJSON(API_Sess)
?GET
##Authorization
A_Token <- "6d13e63640b58406fd277f9635330816"




#Assigning Token
DELETE(API_Sess)
?POST

Token <- POST(url = API_Sess, encode = "raw", body = Input_Sess)
Token
Input_Sess <- ('{"user":
{"login": "camethster101@hotmail.com","password": "&StayingSober365"  }}')
Input_Sess <- toJSON((data.frame(login = UserName ,password = Password)))
Input_Sess

#Getting User
GET(url=API_user)


jsoncars <- toJSON(mtcars, pretty = TRUE)
cat(jsoncars)

QuoteDay <- fromJSON("https://favqs.com/api/qotd")

?POST
GET(url = "https://favqs.com/api/quotes/:quote_id")
GET(url = "https://favqs.com/api")
?GET
