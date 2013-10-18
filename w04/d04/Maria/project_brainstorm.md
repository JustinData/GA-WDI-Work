# Mechanical Bird
  
* First iteration of idea:

###Project:
    Web app that sends a poem through by telephone.

###How it works:

1. User signs up by giving their telephone number.

2. User cliks a button starting procedure:

   App picks a random poem
        *array of poems in DB?
        *poem mp3 from soundcloud?

   App sends poem to user 
        *using Tropo or Twilio?

###Possible APIs Libraries to use:
    *[Soundcloud](http://developers.soundcloud.com/) 
    *[Tropo](https://www.tropo.com/docs/webapi/quickstarts/making-call)
    *[Twilio](https://www.twilio.com/docs/api/rest/making-calls)

So far I have been able to try Tropo and get it so if I call a number it reads a JSON file on my server. You can call it: 347-343-2972. So far I think Tropo uses JSON and Twilio uses its own language, Twilio's docs seem outdated (from 2010). 

It would be great if I could somehow use Soundcloud's mp3's but I think that may be too much work for one week.

*Second iteration of idea

###Models
My original idea was to only have a User and a Poem and to have a random poem sent to the user at a random time during the day. But to fulfill reqs I need 3 models, so I changed the idea a bit. I came up with a Type of Poem model which references a different press the poem came from (Commoners Press, Luquor Street Press, St. Andrews Press). If possible app will ask user for number they want poem sent to, instead of sending it to user.

###How it works: 

The User will first choose a type of poem (press) 
Then a poem from the press.
Then ask user for a telephone number it wants poem sent to
Sends poem to that number

###MODELS: 
*Users
*Type of Poem
*Poems
 
Users have many Poems
Poems belong to Users
Poems belong to a Type of Poem




