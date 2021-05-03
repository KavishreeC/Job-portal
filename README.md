# Rails-Job Portal

A simple Job-Portal web application with REST API using Rails.

### Purpose

Job portal is an online platform that connects the job seekers with recruiters.Companies can post their recruitment details and vacancies in this portal.Job seekers can seek for appropriate job according to their qualification.This portal is developed to provide various categories of job and the seekers can find it with ease.

### How it works

* Recruiters can register on the website and post job details 
* Recruiters can update job details
* Job seekers can register on the website and apply for the job
* Job seekers will get mail alerts once they apply for the job
* Job seekers can apply for multiple jobs at once, but they can only apply once for a particular job

## Getting Started

### Basic Setup

* Ruby version - 3.0.0
* Rails Version - 6.1.3.1
* GitHub

### Important Gems

* gem 'pg'     - Postgresql Database for Active Record 
* gem 'devise' - User Authentication
* gem 'Figoro' - Set Environment Variables
* gem 'JWT'    - Generating and validating JWTs for API Authentication
* gem 'letter opener' - Preview mails in the browser instead of sending
* gem 'rabl'   - Customize JSON response
* Bootstrap    - Styling

To get started with the app:

* `git clone git@github.com:KavishreeC/Job-portal.git` to clone this repo

* `bundle install` to install all required gems

* Update `database.yml` file

* `rails db:create` to create database

* `rails db:migrate` to make all database migrations

* `rails s` to start the rails server

* App should be running on http://localhost:3000

### Demo

Checkout the Application on Heroku - https://job-portal2.herokuapp.com/users/sign_in 


