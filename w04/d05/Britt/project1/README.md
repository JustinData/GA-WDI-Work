# My Project

## Scope

It's currently really difficult to keep track of apps and their features. When you're interested in a new functionality, at it's best you can read release notes meticulously, follow the developer or the app if they have twitter accounts, or subscribe to a mailing list if it's a headlining feature. None of these are good solutions.

I'm looking to create an app that, at its most basic, is a platform to follow the progress and development of iOS App Store Apps. I have lots of ideas to grow it, but you can follow apps, be alerted about updates, and request, upvote/recommend, and be alerted about specific features. With a large enough database over time, I'd eventually include the ability to compare similar apps in terms of functionality, utility, etc.

At first, I want to focus on receiving and interacting with app store data and user queries. It will be challenging to manage searches properly with the amount of data (almost 1 billion apps) in the App Store. So managing search, presenting the App Data are fundamental, core functionalities of my project. I'll build from there, from adding the features aspect of the app, a special developer object model, and perhaps an alternative log in option.

## Object Models

  * Users, Apps, Features; Developers < Users.
  * I believe I will personally store every app that is searched for in the app's database directly.
  * One large challenge I face is managing app data stored in my database with user-provided feature requests, and simultaneously keeping it as up-to-date as possible as new data becomes available on the App Store.

## Wireframes

## Resources

* Apple's Search API, both search and lookup functionalities
* HTTParty gem to provide data to my object models
* If I get to it, OmniAuth for facebook login


## User Stories

## **Handles invalid data.** 

###Forms in your application should validate data on the backend (controllers & models) and handle incorrect inputs. Validate sign up information, verify necessary model fields are populated (not blank) for required fields, valid email addresses, etc.

    * This will be challenging for finding the correct app that the user is looking for, and showing enough search results without overwhelming.

## **Styling** 

###Make your app look nice. Think about color & typography and make sure everything is aligned properly.
  
  * This will be an important challenge of this project, because it's one of my biggest opportunities as far as my skills are concerned.