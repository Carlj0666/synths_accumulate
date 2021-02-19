# Test Notes Revised

# Associations
# User
has_many :synths
has_many :tech, through: :synths

# Synth
belongs_to :user
belongs_to :tech

# Tech
has_many :synths
has_many :users, through: :synths

# User attribs
User
username
Email
UID
provider
password_digest

rails g resource User username email password_digest uid provider


shoe = Shoe.new(color: "black")
shoe.save
# if the save was unsuccessful, look at the errors:
shoe.errors.full_messages
# if I got the error "Brand must exist", then I need to associate the shoe to a brand before saving:
nike = Brand.create(name: "Nike")
shoe = nike.shoes.create(color: "black")