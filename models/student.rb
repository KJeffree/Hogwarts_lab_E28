require_relative('../db/sql_runner')

class Student

  attr_reader :id, :first_name, :last_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @house_id = options['house_id']
    @age = options['age'].to_i
  end

  def save()
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house_id,
      age
      )
      VALUES
      (
        $1, $2, $3, $4
      )
      RETURNING *"
      values = [@first_name, @last_name, @house_id, @age]
      student_data = SqlRunner.run(sql, values)
      @id = student_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map{ |student| Student.new(student)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM students
    WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)
    result = Student.new(student[0])
    return result
  end

  def house()
    sql = "SELECT * FROM houses
    WHERE id = $1"
    values = [@house_id]
    house_data = SqlRunner.run(sql, values)
    result = House.new(house_data.first())
    return result.name
  end

end
