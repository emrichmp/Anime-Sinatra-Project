# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app 
    - Used Sinatra Gem to build web app
- [X] Use ActiveRecord for storing information in a database
    - Used AR to make migration tables that are stored in the DB
- [ ] Include more than one model class (e.g. User, Post, Category)
    - I have User AND Anime model classes
- [ ] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    - User has_many Animes
- [ ] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    - Animes belongs to User
- [ ] Include user accounts with unique login attribute (username or email)
    - User has a username to log in
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    - User can CRUD their Animes and attributes
- [ ] Ensure that users can't modify content created by other users
    _ Only a User that has made their specific anime can edit that entry
- [ ] Include user input validations
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message