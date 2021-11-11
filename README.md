# Rails capstone project

> Capstone project for rails.

## screenshot

![Screenshot 2021-11-10 at 18-09-25 RorCapTwitter](https://user-images.githubusercontent.com/68623189/141208223-29ebb264-e560-4357-b454-029272c7c6ca.png)

## Explanation

This is social media desktop application intented to reproduce the rough functionalities of a twiiter style of app.

Users can create accounts by typing their names and e-mails. they also get to choose an unique username that can only be accesed by them.

When Logged in they can create their own messages and share with the rest of the users, those will appear in the index.

The user can also visit other users' profiles and see their tweets and basic stats.

There is also a section called "Who to follow", this will show a list of users recommended to the user in question, and the user can follow them, when you follow an user their tweets come first in the index **not implemented in this iteration**.

On the left side there is a section called the sidenav, this will show a picture of you along with other stats, like the people you are following and the ones following you, this is also where you find basic nav links.

The feature that I chose to implement in this initial iteration of the app was the one of adding avatar pictures to each user to ease the recognition and to make the experience more complete, also cover images to decorate profile pages. This was done using active storage.

## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4

## Live Demo

https://flamboyant-shaw-7e890c.netlify.app

## Getting Started

To get a local copy and run this repository, follow these simple example steps:

    Open your terminal and go to the directory where you want to clone the repository.

    Download/clone this repository GitHub Repository on your computer: type git clone https://github.com/franklinben23/ror-social-scaffold.

    Still in your terminal, use the command cd to go to the place where you saved/cloned the repository. For example: Desktop/User/ror-capstoneproject/. You may use the command ls to see the files and repositories existent in your current location.

    Install the necessary gems to run the project: type bundle install and then yarn install.

    Now, please run these commands rails db:create and rails db:migrate to run all the migration for the database and have all tables updated and ready to use.

Now your environment is ready to run the project! Type rails s, open your browser and type localhost:3000.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rspec --format documentation
```

## Author

**Franklin benjamin crisostomo de la rosa**

- GitHub: [@franklinben23](https://github.com/franklinben23)
- Twitter: [@frankli2302](https://twitter.com/Frankli2302)
- LinkedIn: [Franklin Benjamin](https://www.linkedin.com/in/franklinbenjamin/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

TBA

## 📝 License

TBA
