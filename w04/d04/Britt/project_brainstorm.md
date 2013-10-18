## My Project

I'm looking to create an app that, at its most basic, is a platform to follow the progress and development of iOS App Store Apps. I have lots of ideas to grow it, but you can follow apps, be alerted about updates, and an important feature that I'd like to get up ASAP is the ability to request, upvote/recommend, and be alerted about updates. With a large enough database, I'd like to also eventually make the site about comparing similar apps for functionality, utility, etc.

### What problem are you trying to solve?

It's currently really difficult to keep track of apps and their features. When you're interested in a new functionality, at it's best you can read release notes meticulously, follow the developer or the app if they have twitter accounts, or subscribe to a mailing list if it's a headlining feature. None of these are good solutions.

### What will your app do / what features will it have?

At first, I want to focus on receiving and interacting with app store data and user queries. It will be challenging to manage searches properly with the amount of data (almost 1 billion apps) in the App Store. So managing search, presenting the App Data, and full history of release notes are preliminary functionalities I know I want to implement.

### What do you think you can reasonably implement in 1 week?

I have a LOT of ideas, but I want to keep it reasonably managable to begin with, and expand as much as I can. So far, with reasonable effort and in a fairly short period of time, i've been able to learn the query structure iTunes uses, interact with the response provided, and research some tools to get the full release notes history, which Apple does not provide in their own API, but a few sites have the data in a way that I can scrape using Nokogiri & the amazing SelectorGadget extension for web browsers.

### What APIs or other resources might you use / do you plan on using?


* **Models.** Your app should have at least 3 models. Make sure they are associated correctly.
* **Views.** Use partials and view helpers to DRY up your views.
* **Handles invalid data.** Forms in your application should validate data on the backend (controllers & models) and handle incorrect inputs. Validate sign up information, verify necessary model fields are populated (not blank) for required fields, valid email addresses, etc.
* **Heroku.** Deploy your code to Heroku with a PostgreSQL database.
* **User Login.** Make sure you have a user model with basic authentication and authorization set up.
* **Styling** Make your app look nice. Think about color & typography and make sure everything is aligned properly.
* **Use an API (Optional)** APIs add data and functionality to your app (some have gems!)