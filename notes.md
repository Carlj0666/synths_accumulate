# Notes

# TO DO

* Refactor, remove logic from views!! Use partials and helpers, dry up the code

*Record Walkthrough for 5 min.

*Write Blog


*Sample questions revised by Madeline: https://docs.google.com/document/d/1X2ksfUCOZcE0cNZg7xYGNOJCEkRUMMiD-YD5kvDR6XI/edit
*Practice questions:
https://docs.google.com/document/d/1lnaD7T1tp2jS_4TTL3uy_47P_GF6BSNQB3_Wvj1_xn0/edit 

Example of a good readme: https://www.makeareadme.com/

Examples of good technical blogs:
https://stuart-hahn.github.io/writing_a_cli_gem_in_ruby
https://medium.com/swlh/breaking-down-a-sinatra-application-18d158ab80ea
https://dev.to/cristalcodes/creating-a-basic-sinatra-application


* Study!!! Especially understand the use of the build method, Madeline keeps mentioning it!!

https://apidock.com/rails/ActiveRecord/Associations/CollectionProxy/build

*Key Concepts:
Request/response flow
Authentication 
Rails model validations 
ActiveRecord Associations 
Migrations and the Schema file 
has_many through 
Nested routes 
Scope methods 


# Learn plan
1) Rails new
2) Setup Tables/associations
3) Follow week 6 videos to setup User Model
4) Go back to 2nd video of week 1 
5) Finish oauth setup here: https://www.youtube.com/watch?v=AoIqSQsijN0&feature=youtu.be from: 26:43


# DB PURGE
rake db:drop db:create db:migrate

# Requirements
Use the Ruby on Rails framework.

Your models must:

[X] Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

[X] Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user
* PROBABLY the TECH NAME HERE as the USER submittable attrib on the join table

[] Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

[X] You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).
* UNDER synth model - self.order_by_price method contains .order

[] Your application must provide standard user authentication, including signup, login, logout, and passwords.

[X] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
* Google oauth

[X] You must include and make use of a nested resource with the appropriate RESTful URLs.

[] You must include a nested new route with form that relates to the parent resource
# WEEK 5
[] You must include a nested index or show route

[X] Your forms should correctly display validation errors.

  [] a. Your fields should be enclosed within a fields_with_errors class

  [] b. Error messages describing the validation failures must be present within the view.

[] Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

[] Logic present in your controllers should be encapsulated as methods in your models.

[] Your views should use helper methods and partials when appropriate.

[] Follow patterns in the Rails Style Guide and the Ruby Style Guide.

[X] Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.