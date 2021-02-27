# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
  * Tech - has_many :synths
  * Synth - has_many :teches

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
  * Synth - belongs_to :user
  * Synth - belongs_to :tech

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
  * Tech - has_many :users, through: :synths
  * User - has_many :teches, through: :synths

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
  * Tech - has_many :users, through: :synths
  * User - has_many :teches, through: :synths

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
  * A user can create a synth with it's many attributes.

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  * Tech - validates :name, presence: true
  * User - validates :username, :email, presence: true & validates :username, :email, uniqueness: true

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  * Synth - contains method (self.order_by_price) used in the synths_controller to sort synths by price.

- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
  * Session Controller

- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  * Omniauth

- [X] Include nested resource show or index (URL e.g. users/2/recipes)

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
  * tech_synths_path - /teches/:tech_id/synths

- [x] Include form display of validation errors (form URL e.g. /recipes/new)
  * Validation errors present for new, edit and login forms

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate