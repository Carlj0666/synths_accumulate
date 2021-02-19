# Test Notes Revised

# Learn plan
1) Rails new
2) Setup Tables/associations
3) Follow week 6 videos to setup User Model
4) Go back to 2nd video of week 1 
5) Finish oauth setup here: https://www.youtube.com/watch?v=AoIqSQsijN0&feature=youtu.be from: 26:43
6) Follow sequentially from there


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



