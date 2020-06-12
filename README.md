# League Builder

## A fast and powerful way to test out new item builds for the game League of Legends

### Demo:

<a href="http://www.youtube.com/watch?feature=player_embedded&v=CLmNh6H1i5M " target="_blank"><img src="http://img.youtube.com/vi/CLmNh6H1i5M/0.jpg" alt="Demo Video" width="560" height="315" border="10" /></a>

### Features
* Stats for every character in League of Legends
* Information and stats for all items in the game
* Live up to date data on items and characters from the Riot Games API
* Dynamic single-page web application.
* Fast and clean ReactJS frontend
* Secure Rails backend

### [Front-End Repo Here](https://github.com/LeagueBuilders/LeagueBuilderFrontend "League Builder Front-End")

### Installation
You'll need an instance of [PostgreSQL](https://www.postgresql.org/download/) running on your local machine,
and an installation of Ruby on Rails (6+).

From the base `leaguebuilderbackend` directory in your shell of choice, you'll want to run `bundle install`, followed by `rails db:setup`
Finally, `rails server` will launch the API locally @ port 3000, ready for the front-end react app to connect!
