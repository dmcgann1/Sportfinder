# User.delete_all
Sport.delete_all
Booking.delete_all
# Specify this as the dependent destroy is only triggered when I destroy the object not directly in the database with delete
# For development purposes only
UserBooking.delete_all


# diarmuid = User.new
# diarmuid.email = 'diarmuid@example.com'
# diarmuid.password = 'password'
# diarmuid.encrypted_password = '$2a$10$y2uSEcU4UNuwa.Jvr1bkyOrMnykpWYxDnIdAfmaqbLrRkgaDoyk1S'
# diarmuid.save!

# tom = User.new
# tom.email = 'tom@example.com'
# tom.password = 'password'
# tom.encrypted_password = '$2a$10$LYSdJ1u2o9hJnzxRQVCf/OxMeVlC6UVDEwp7s9jHqS79DEb11Dp5q'
# tom.save!

# bob = User.new
# bob.email = 'bryan@example.com'
# bob.password = 'password'
# bob.encrypted_password = '$2a$10$i80tKbiVkuVXRGZ9CapcDeI6Pgj8yTV7HUeuDUhuQ5yyPB3qGc5mS'
# bob.save!

# bryan = User.new
# bryan.email = 'bob@example.com'
# bryan.password = 'password'
# bryan.encrypted_password = '$2a$10$.ctKri4RuKCkES.63VLr3uL8jfQvVP6iktjI0CpGuG5rENebWVufu'
# bryan.save!

# patsy = User.new
# patsy.email = 'patsy@example.com'
# patsy.password = 'password'
# patsy.encrypted_password = '$2a$10$ZF5sKJxwhVfdYamn7FgPN..RIMNqL5de3pdJ6KXfJfVBN0cYVtriy'
# patsy.save!

tennis = Sport.create!(name: 'Tennis')
golf = Sport.create!(name: 'Golf')
soccer = Sport.create!(name: 'Soccer')
rugby = Sport.create!(name: 'Rugby')
basketball = Sport.create!(name: 'Basketball')
cycling = Sport.create!(name: 'Cycling')








