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

tennis = Sport.create!(name: 'Tennis', image: 'http://cdn.flaticon.com/png/256/48131.png')
golf = Sport.create!(name: 'Golf', image: 'http://cdn.flaticon.com/png/256/39675.png')
soccer = Sport.create!(name: 'Soccer', image: 'http://cdn.flaticon.com/png/256/48222.png')
rugby = Sport.create!(name: 'Rugby', image: 'http://cdn.flaticon.com/png/256/26941.png')
basketball = Sport.create!(name: 'Basketball', image: 'http://cdn.flaticon.com/png/256/10660.png')
darts = Sport.create!(name: 'Darts', image: 'http://cdn.flaticon.com/png/256/46813.png')
Dance = Sport.create!(name: 'Dance', image: 'http://cdn.flaticon.com/png/256/48525.png')
Hiking = Sport.create!(name: 'Hiking', image: 'http://cdn.flaticon.com/png/256/48119.png')
Mountain_Biking = Sport.create!(name: 'Mtn Biking', image: 'http://cdn.flaticon.com/png/256/48081.png')
Yoga = Sport.create!(name: 'Yoga', image: 'http://cdn.flaticon.com/png/256/46697.png')
Gym = Sport.create!(name: 'Gym', image: 'http://cdn.flaticon.com/png/256/48515.png')
Skiing = Sport.create!(name: 'Skiing', image: 'http://cdn.flaticon.com/png/256/1227.png')
Karate = Sport.create!(name: 'Karate', image: 'http://cdn.flaticon.com/png/256/10589.png')
Ice_Hockey = Sport.create!(name: 'Ice Hockey', image: 'http://cdn.flaticon.com/png/256/37428.png')
Running = Sport.create!(name: 'Running', image: 'http://cdn.flaticon.com/png/256/48247.png')
Skateboarding = Sport.create!(name: 'Skateboarding', image: 'http://cdn.flaticon.com/png/256/37683.png')
Cycling = Sport.create!(name: 'Cycling', image: 'http://cdn.flaticon.com/png/256/48135.png')
Climbing = Sport.create!(name: 'Climbing', image: 'http://cdn.flaticon.com/png/256/39600.png')
Fishing = Sport.create!(name: 'Fishing', image: 'http://cdn.flaticon.com/png/256/10965.png')
Archery = Sport.create!(name: 'Archery', image: 'http://cdn.flaticon.com/png/256/37755.png')
Sprinting = Sport.create!(name: 'Sprinting', image: 'http://cdn.flaticon.com/png/256/48295.png')
Pool = Sport.create!(name: 'Pool', image: 'http://cdn.flaticon.com/png/256/39733.png')
Swimming = Sport.create!(name: 'Swimming', image: 'http://cdn.flaticon.com/png/256/48495.png')
Baseball = Sport.create!(name: 'Baseball', image: 'http://cdn.flaticon.com/png/256/37747.png')
Horse_Riding = Sport.create!(name: 'Horse Riding', image: 'http://cdn.flaticon.com/png/256/8651.png')
Ping_Pong = Sport.create!(name: 'Ping-Pong', image: 'http://cdn.flaticon.com/png/256/48243.png')
American_Football = Sport.create!(name: 'American Football', image: 'http://cdn.flaticon.com/png/256/53697.png')








