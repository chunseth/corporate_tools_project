# README

https://corporate-tools-project.onrender.com

- Ruby version 3.4.10
- Rails 8.1
- PostgreSQL
- HTML and CSS
- Minitest
- Capybara
- Selenium

# Corporate Tools

A Rails internal ticket management tool for corporate operations teams.

## Overview

This Project helps employees create, track, filter, and delete internal support requests.
I built this project while applying to Corporate Tools to
demonstrate my ability to learn and work with Ruby on Rails.

## Features

- Create, view, edit, delete tickets
- Track ticket status and priority
- Filter tickets by either status or priority
- Dashboard counts for quick overview of open, in-progress, and completed tickets
- Form validation with error messages
- Flash messages on page redirect for successful actions
- PostgreSQL database
- Automated model, controller, and system tests
- Seed data for tickets to provide demo experience

## Getting Started

### Requirements

- Ruby
- Rails
- PostgreSQL
- Bundler

### Setup

git clone https://github.com/chunseth/corporate_tools_project.git
cd corporate_tools_project_pg
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
bin/rails server

Will run on http://localhost:3000

### Running Tests

bin/rails test
bin/rails test:system

### Code Quality

bin/rubocop

## Project Structure

- app/models - data and validation rules
- app/controllers - request handling
- app/views - page templates
- db/migrate - database changes
- db/seeds.rb - demo data
- test - tests

## Future Improvements

- User auth
- Ticket assignment to employees
- Due dates
- Email notifications

## What I'd build next

A business compliance tracker for reports, renewals, tax filings

- Obligations have due dates, status, notes, history

## What I learned

Ruby basics:

- Syntax, loops, conditionals and applying them
  Rails basics:
- MVC system and handling each of them in an application
  How to use Ruby on rails to CRUD tasks
  Building tests in Rails
