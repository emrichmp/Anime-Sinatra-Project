# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app 
    - Used Sinatra Gem to build web app
- [X] Use ActiveRecord for storing information in a database
    - Used AR to make migration tables that are stored in the DB
- [X] Include more than one model class (e.g. User, Post, Category)
    - I have User AND Anime model classes
- [X] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    - User has_many Animes
- [X] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    - Animes belongs to User
- [X] Include user accounts with unique login attribute (username or email)
    - User has a username to log in
- [X] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    - User have full CRUD on their anime entries
- [X] Ensure that users can't modify content created by other users
    - Edit and Delete Buttons/links only show up if you are the user that owns that Anime entry
- [X] Include user input validations
    - Can't create a new user or new anime entry - redirects page
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message