# Recipe on Rails

Recipe on Rails is a simple Ruby on Rails app for managing and finding recipes.
The primary purpose is to help me learn Ruby on Rails.

## Current Features
* View, add, update, and delete:
  * Recipes
  * Ingredients
  * Units of measurement
  * Tags
* User password reset via email.

## Upcoming Features
* Searching by name.
* Tagging recipes.
* Browse recipes by tag and/or ingredient.

## Dependencies
* Postgres
* MailTrap (Only required if running in production)

## Development Setup
Copy the environment template and configure your local variables:
```bash
cp .env.example .env.development
```
Then install dependencies and prepare the database:
```bash
bundle install
bin/rails db:prepare
```

## Run it!
```bash
bin/dev
```

## Test Setup
Copy the environment template and configure your local variables:
```bash
cp .env.example .env.test
```

## Test it!
```bash
bin/rails test
```