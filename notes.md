# Test Notes Revised
left off at (refactoring) 36:06 https://www.youtube.com/watch?v=zqCQjUZ8kjE&feature=youtu.be
Left off at (Proj prep, user setup) 47:06 https://www.youtube.com/watch?v=7Il479ut4p4&feature=youtu.be
* create logout links to show in layout

* Logged in as message in layout?

* ADDED SKIP_BEFORE_ACTION notes to users, teches, and synths controllers to require login. Research

BELOW Accomplished WITH HELPERS VIA VIEW HELPERS? Research: https://www.youtube.com/watch?v=zqCQjUZ8kjE&feature=youtu.be
36:00
* User session not persisting
* Must be logged in to create a tech
* Must be logged in to create synth
* Delete Synth doesn't work
* figure out how to make synths created by users only editable by them (Or let anyone logged in edit)
*brand and price under new tech should be optional to add
# Scope methods: https://www.youtube.com/watch?v=7Il479ut4p4&feature=youtu.be
20:00

# DONE
Login
Create new User
Create Synth
Edit Synth


# Learn plan
1) Rails new
2) Setup Tables/associations
3) Follow week 6 videos to setup User Model
4) Go back to 2nd video of week 1 
5) Finish oauth setup here: https://www.youtube.com/watch?v=AoIqSQsijN0&feature=youtu.be from: 26:43
6) Follow sequentially from there

# Current

CHECK - Create not working, no no synths saved? 
CHECK = synths_attributes=(attributes) model for above
NESTED ATTRIBES COULD FIX THIS
Need to validate for email uniqueness, look into this. Video here includes discussion:
https://www.youtube.com/watch?v=AoIqSQsijN0&feature=youtu.be


# Associations Map
# User
has_many :synths
has_many :tech, through: :synths

# Synth
belongs_to :user
belongs_to :tech

# Tech
has_many :synths
has_many :users, through: :synths

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