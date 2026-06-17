# EventText

EventText is a Sinatra-based Ruby web application for managing contacts and sending SMS messages through the Twilio API.

Users can sign up, log in, create contacts, manage saved phone numbers, and send text messages to selected contacts from a simple web interface.

## Demo

### Sign Up

![Sign Up](https://github.com/ravibkjoshi/EventText/blob/master/public/signup.gif)

### Create a Contact

![Create a Contact](https://github.com/ravibkjoshi/EventText/blob/master/public/contact.gif)

### Send a Mass Text Message

![Send a Mass Text Message](https://github.com/ravibkjoshi/EventText/blob/master/public/message.gif)

## What This Project Does

EventText allows a user to:

- Create an account
- Log in and log out
- Add contacts with names and phone numbers
- Edit or delete saved contacts
- Select contacts from their contact list
- Send SMS messages through the Twilio API
- Store users and contacts in a PostgreSQL database

## Current Features

- Sinatra-based Ruby web application
- User signup and login
- Password hashing with BCrypt
- Session-based authentication
- Contact creation, editing, and deletion
- User-to-contact associations through ActiveRecord relationships
- PostgreSQL database support
- Twilio API integration for sending SMS messages
- ERB views for server-rendered pages
- Materialize CSS styling
- Basic RSpec/Faker development and test dependencies

## Tech Stack

- Ruby
- Sinatra
- ActiveRecord
- PostgreSQL
- Twilio API
- BCrypt
- ERB
- HTML/CSS
- JavaScript
- jQuery
- Materialize CSS
- RSpec
- Faker

## Project Structure

```text
EventText/
├── app/
│   ├── controllers/
│   │   ├── contacts.rb
│   │   ├── index.rb
│   │   ├── messages.rb
│   │   ├── sessions.rb
│   │   ├── tech.rb
│   │   └── users.rb
│   ├── helpers/
│   │   ├── twilio_helpers.rb
│   │   └── user_helpers.rb
│   ├── models/
│   │   ├── contact.rb
│   │   ├── relationship.rb
│   │   └── user.rb
│   └── views/
├── config/
├── db/
│   └── migrate/
├── public/
├── spec/
├── Gemfile
├── Rakefile
├── config.ru
└── README.md
```

## Environment Variables

This project uses environment variables for sensitive credentials.

Create a `.env` file in the root directory and add your Twilio credentials:

```env
account_sid=your_twilio_account_sid
auth_token=your_twilio_auth_token
SESSION_SECRET=your_session_secret
```

The `.env` file should not be committed to GitHub.

## How to Run Locally

Clone the repository:

```bash
git clone https://github.com/ravibkjoshi/EventText.git
cd EventText
```

Install dependencies:

```bash
bundle install
```

Set up the database:

```bash
bundle exec rake db:create
bundle exec rake db:migrate
```

Create your `.env` file:

```bash
touch .env
```

Add your Twilio credentials to `.env`:

```env
account_sid=your_twilio_account_sid
auth_token=your_twilio_auth_token
SESSION_SECRET=your_session_secret
```

Run the app locally:

```bash
bundle exec shotgun
```

Then open the local development URL shown in your terminal.

## What This Project Demonstrates

This project demonstrates how to build a full-stack Ruby web application using Sinatra, ActiveRecord, PostgreSQL, and a third-party API.

It shows experience with:

- Building server-rendered Ruby web applications
- Creating REST-style routes in Sinatra
- Managing user signup, login, logout, and sessions
- Hashing passwords with BCrypt
- Modeling database relationships with ActiveRecord
- Connecting users to saved contacts
- Performing create, read, update, and delete actions
- Integrating with the Twilio SMS API
- Using environment variables for API credentials
- Structuring a small MVC-style web application

## Why I Built This

I built EventText as an early full-stack Ruby project to practice building a working web application with authentication, database-backed models, and external API integration.

The goal was to go beyond a static website and create an app where users could manage real data, interact with saved records, and trigger an API-driven action from the browser.

## Notes

This is an older portfolio project and is intentionally simpler than my more recent work. It remains useful as an example of building a Sinatra-based MVC-style application with authentication, database relationships, and Twilio API integration.

## Disclaimer

EventText uses the Twilio API to send SMS messages. Anyone running this project should use their own Twilio credentials, follow Twilio’s messaging rules, and avoid sending messages without proper consent.

## License

This project is licensed under the MIT License.
