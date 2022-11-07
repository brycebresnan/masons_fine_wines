# Mason's Fine Wines  

#### By Bryce Bresnan <Bryce.Bresnan@gmail.com>

#### A project to demonstrate building and accessing databasses through a browser using ActiveRecord and Ruby on Rails. The theme of the project is a site of products and reviews, which I chose to model off of a wine store run by my dog, Mason.  Using bCrypt authentication, authorized users are able to create, update, and delete Wines, as well as write reviews and leave ratings for the wine which are organized by linked tables in Postgres. In order to test the functionality of the project, I seeded the database using faker. All CRUD functionality is tested using rspec and capybara. 

## Technologies Used

* Ruby
* Rails
* Active Record

## Setup/Installation Requirements

* Clone this repository from GitHub.
* Navigate to the root in command line
* Run <code>$bundle install</code> to install the required gems.
* Run <code>$rake db:setup</code> to create the database structure in Active Record.
* Run <code>$rails s</code> to start the server.
* Navigate in your browser to http://localhost:3000/


## Known Bugs

*Scope that gets the USA product was changed to "USD" in order to utilize seeds. 

## License
MIT License

Copyright (c) 2022 Bryce Bresnan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
