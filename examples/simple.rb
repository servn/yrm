require "yrm"

# Find Car object with id eq 1
car = Car.find(1)
puts car.title
car.title = "BMW New"
car.save!
