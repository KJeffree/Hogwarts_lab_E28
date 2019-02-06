require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')


Student.delete_all()
House.delete_all()

gryffindor = House.new({
  "name" => "Gryffindor"
})
gryffindor.save()

slytherin = House.new({
  "name" => "Slytherin"
})
slytherin.save()

ravenclaw = House.new({
  "name" => "Ravenclaw"
})
ravenclaw.save()

hufflepuff = House.new({
  "name" => "Hufflepuff"
})
hufflepuff.save()

student1 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house_id" => ravenclaw.id,
  "age" => 17
})

student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_id" => gryffindor.id,
  "age" => 17
})

student2.save()

student3 = Student.new({
  "first_name" => "Cedric",
  "last_name" => "Diggory",
  "house_id" => hufflepuff.id,
  "age" => 18
})

student3.save()

binding.pry
nil
