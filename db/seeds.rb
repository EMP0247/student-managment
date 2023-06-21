# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(
    first_name: 'Hutish',
    last_name: 'Seju',
    email: 'sejuhutish@gmail.com'
)

10.times do |i|
    Student.create(
        first_name: "Student-",
        last_name: "#{i+1}",
        email: "student#{i+1}@demo.com"
    )
end

Student.all.each do |student|
    student.blogs.create(title: "Test blog for student #{student.id }", content: "Hii Hello Bye")
end