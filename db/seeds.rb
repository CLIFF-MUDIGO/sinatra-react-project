# seeds.rb

# Load the environment file
require_relative '../config/environment'

# Define your seed data

# Seed students
Student.create(name: 'John Doe', age: 20)
Student.create(name: 'Jane Smith', age: 22)

# Seed admissions
student1 = Student.find_by(name: 'John Doe')
Admission.create(student: student1, program: 'Computer Science', date: Date.today)

student2 = Student.find_by(name: 'Jane Smith')
Admission.create(student: student2, program: 'Business Administration', date: Date.today)

# Seed additional data

# ...

# Output a message indicating the seeding is complete
puts 'Seeding completed.'
