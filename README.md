# Bloccit

### Bloccit is a Reddit inspired application

Users can sign up, create posts, comment on posts, vote on posts, favorite posts and receive updates on their favorite posts via email.

[Demo Site](https://mysterious-dawn-32789.herokuapp.com/)

## Project Objectives

- Users can sign up for a free account by providing a name, email, and password
- Users can sign in and out of Bloccit
- Users can view topics and posts
- Users can comment on posts
- Users can create new posts and edit posts they own
- Users can up/down vote any post
- Users can favorite any post and be emailed with updates on that post
- User's profile displays their posts and comments
- Users can add a Gravatar to their profile
- User roles available: admin or standard user
- Admins can delete and create any topic or post
- Development database is seeded automatically with users, topics and posts

## Built With

#### Languages and Frameworks:
- Ruby 2.3.3
- Rails 4.2.8
- Bootstrap-sass

#### Databases:
- SQLite (Test, Development)
- PostgreSQL (Production)

#### Tools and Gems:
- BCrypt for secure passwords
- SendGrid for email confirmation
- FactoryGirl for test suite success

## Setup and Configuration

#### Setup:

- Environment variables were set using Figaro and are stored in config/application.yml (ignored by git).

- The config/application.example.yml file illustrates how environment variables should be stored.

#### To run Bloccit locally:

1. Clone the repository
2. Run `bundle install`
3. Create and migrate the database with `rake db:create` and `rake db:migrate`cd
4. Start the server using `rails server`
5. Run the app on `localhost:3000`
