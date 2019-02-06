require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')


Student.delete_all()

student1 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house" => "Ravenclaw",
  "age" => 17
})

student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house" => "Gryffindor",
  "age" => 17
})

student2.save()

student3 = Student.new({
  "first_name" => "Cedric",
  "last_name" => "Diggory",
  "house" => "Hufflepuff",
  "age" => 18
})

student3.save()

house1 = House.new({
  "name" => "Gryffindor"
})
house1.save()

house2 = House.new({
  "name" => "Slytherin"
})
house2.save()

house3 = House.new({
  "name" => "Ravenclaw"
})
house3.save()

house4 = House.new({
  "name" => "Hufflepuff"
})
house4.save()

binding.pry
nil
