## README

Rails is popularly known for building web applications. Chances are if you're reading this you've built a traditional server-rendered web application with Rails before. If not, I'd highly recommend going through the Getting Started with Rails page to familiarize yourself with the Rails framework before proceeding with this tutorial.

As of version 5, Rails core now supports API only applications! In previous versions, we relied on an external gem: rails-api which has since been merged to core rails.

API only applications are slimmed down compared to traditional Rails web applications. According to Rails 5 release notes, generating an API only application will:

* Start the application with a limited set of middleware
* Make the ApplicationController inherit from ActionController::API instead of ActionController::Base
* Skip generation of view files

This works to generate an API-centric framework excluding functionality that would otherwise be unused and unnecessary.

## Includes

1. Overview
2. Pre Requisites
3. API End Points
4. Project Setup Basics
5. References

## 1. OVERVIEW 

Todo-Items Rails Api TDD Project with test cases

This project is aimed to learn and understand the Rails API Framework and TDD (Test Driven Development) Techniques.
1. Generate a API Application with Rails 5
2. Setup RSpec testing framework with **Factory Bot**, **Database Cleaner**, **Shoulda Matcher**, and **Faker**
3. Build Models and Controller with TDD (Test Driven Development) Methodology.

**Expected Learning Out of Project:**
*One can understand how to implement the rails api framework, write Rspec Testing, Usage of several gems, writing of specs, request specs, handling of exceptions and global responses.*
 
## 2. PRE-REQUISITES
Before we begin, make sure you have ruby version >= 2.2.2 and rails version >= 5

```
$ rails -v # ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin16]
$ ruby -v # Rails 5.2.1
```

> All good? Let's get started!

## 3. API End Points
| SNo.   | EndPoint                  | Functionality                 |
| :----  | :--------                 | :------------                 |
| 1.     | GET /todos                | List of All Todos             |
| 2.     | POST /todos               | Create new todo               | 
| 3.     | GET /todos/:id            | Get A particular Todo         |
| 4.     | PUT /todos/:id            | Update a todo                 |
| 5.     | DELETE /todos/:id         | Delete a todo and its items   |
| 6.     | GET /todos/:id/items      | Get a todo Item               |
| 7.     | PUT /todos/:id/items      | update a todo Item            |
| 8.     | DELETE /todos/:id/items   | Delete a todo Item            |
| 9.     | POST /todos/:id/items     | Create a Todo item            |
        
## 4. Project Setup Basics
1. Generate a new project todos-api by running ```$ rails new todos-api --api -T -d mysql ```

2. **Dependencies:**
    - [rspec-rails](https://guides.rubyonrails.org/v3.2.9/testing.html) - Testing framework.
    - [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) - A fixtures replacement with a more straightforward syntax. You'll see.
    - [shoulda_matchers](https://github.com/thoughtbot/shoulda-matchers) - Provides RSpec with additional matchers.
    - [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner) - You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
    - [faker](https://github.com/stympy/faker) - A library for generating fake data. We'll use this to generate test data.  
    - Rescue_from: Ruby Meta programming used for handling global exceptions
    - render :json=> - to render json response
    - [Json response statuses](https://guides.rubyonrails.org/layouts_and_rendering.html#the-location-option) - list of http statuses
    - [ActiveRecord Exceptions](https://www.rubydoc.info/docs/rails/3.1.1/ActiveRecord/ActiveRecordError)
    - [httpie](https://httpie.org/)
   
3. Update Gemfile(Already Done in project, go to next step)
   ```
    # Gemfile
    group :development, :test do
      gem 'rspec-rails', '~> 3.5'
    end
    
    group :test do
      gem 'factory_bot_rails', '~> 4.0'
      gem 'shoulda-matchers', '~> 3.1'
      gem 'faker'
      gem 'database_cleaner'
    end
    ```  

4. Run ```$ bundle install``` - to install gems dependencies   
5. Run ```$ rails db:create```  - to create database
6. Run ```$ rails db:migrate``` -  to run db migration
7. Run ```$ bundle exec rspec``` -  to run test cases
8. Run ```$ rails s``` -  to start the rails server on default port :3000
9. Run ```$ http :3000/todos``` -  to see the api response (using httpie)

## 5. REFERENCES
**_Relevant Links_**   
- [Rails API](https://github.com/rails-api/rails-api) 
- [Testing Approach Using Rspec-Rails Testing Framework](https://guides.rubyonrails.org/v3.2.9/testing.html)
- [Faker Gem Usage](https://github.com/stympy/faker)
- [Factory Bot Rails Usage](https://github.com/thoughtbot/factory_bot_rails)
- [Shoulda Matcher Gem Usage](https://github.com/thoughtbot/shoulda-matchers)
- [Json Response Statuses](https://guides.rubyonrails.org/layouts_and_rendering.html#the-location-option	)
- [Global Exception Handling](https://api.rubyonrails.org/classes/ActiveSupport/Rescuable/ClassMethods.html)
- [Demonstrates usage for concerns](https://api.rubyonrails.org/classes/ActiveSupport/Concern.html)
- [Global Json Rendering](https://apidock.com/rails/ActionController/Base/render) 
- [Make HTTP requests to an API with **_httpie_**](https://httpie.org/)
- [https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one](https://scotch.io/tutorials/build-a-restful-json-api-with-rails-5-part-one) 
 


    
      
    

        