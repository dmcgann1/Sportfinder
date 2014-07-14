User.delete_all
Facility.delete_all
Like.delete_all
Review.delete_all
Vote.delete_all

diarmuid = User.new
diarmuid.email = 'dmcgann1@gmail.com'
diarmuid.password = 'password'
diarmuid.encrypted_password = '$2a$10$y2uSEcU4UNuwa.Jvr1bkyOrMnykpWYxDnIdAfmaqbLrRkgaDoyk1S'
diarmuid.save!

tom = User.new
tom.email = 'tom@example.com'
tom.password = 'password'
tom.encrypted_password = '$2a$10$LYSdJ1u2o9hJnzxRQVCf/OxMeVlC6UVDEwp7s9jHqS79DEb11Dp5q'
tom.save!

bob = User.new
bob.email = 'bryan@example.com'
bob.password = 'password'
bob.encrypted_password = '$2a$10$i80tKbiVkuVXRGZ9CapcDeI6Pgj8yTV7HUeuDUhuQ5yyPB3qGc5mS'
bob.save!

bryan = User.new
bryan.email = 'bob@example.com'
bryan.password = 'password'
bryan.encrypted_password = '$2a$10$.ctKri4RuKCkES.63VLr3uL8jfQvVP6iktjI0CpGuG5rENebWVufu'
bryan.save!

patsy = User.new
patsy.email = 'patsy@example.com'
patsy.password = 'password'
patsy.encrypted_password = '$2a$10$ZF5sKJxwhVfdYamn7FgPN..RIMNqL5de3pdJ6KXfJfVBN0cYVtriy'
patsy.save!







