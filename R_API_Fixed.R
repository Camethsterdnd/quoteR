pacman::p_load(tidyverse, httr, usethis, glue, jsonlite)

#uncomment and run the line below to create your personal tokens
#usethis::edit_r_environ()

Sys.getenv("FAVQS_PAT")

#Authorization: Token token="YOUR_APP_TOKEN"

#the following 3 lines are just to let you know what token names are used in the environment.
#name for which you will assign your api key (public access token)
FAVQS_PAT
#name for which you will assign your username
FAVQS_USER
#name for which you will assign your password
FAVQS_LOGIN

httr::GET(url = glue("https://favqs.com/api/{API_Address}", API_Address = "quote"))

main_url = "https://favqs.com/api/{API_Address}"


quote_output <- httr::GET(url = glue(main_url, API_Address = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}', TOKEN = Sys.getenv("FAVQS_PAT"))))

#25 results per page. You can choose the page number below.
quote_output <- httr::GET(url = glue(main_url, API_Address = "quotes"),
                 add_headers(Authorization = glue('Token token={TOKEN}',
                                                  TOKEN = Sys.getenv("FAVQS_PAT"))),
                 params = list(page = 2))

#below just returns the outputs in readable formats.
rawToChar(quote_output$content)
(payload <- content(quote_output))

R_payload <- fromJSON(quote_output)


?jsonlite






#Below are just some examples of different parameters that you can use in these statements.

#
# bob <- httr::GET(url = glue(main_url, THING = "activities/?type=user&filter=gose"),
#                  add_headers(Authorization =
#                                glue('Token token={TOKEN}', TOKEN = Sys.getenv("FAVQS_PAT"))))
# content(bob)
#
# rawToChar(bob$content)
#

#this chunk doesn't currently work but may not be necessary
# mything = list(login = Sys.getenv("FAVQS_USER"),
#                password = Sys.getenv("FAVQS_LOGIN"))
#
# httr::POST(url = glue("https://favqs.com/api/{THING}", THING = "session"),
#            authenticate(Sys.getenv("FAVQS_USER"), Sys.getenv("FAVQS_LOGIN")),
#            type = "basic")
#
# httr::POST(url = glue("https://favqs.com/api/{THING}", THING = "session"),
#            body = mything)
# https://favqs.com/api/activities/?type=user&filter=gose
# Authorization: Token token="YOUR_APP_TOKEN"






