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