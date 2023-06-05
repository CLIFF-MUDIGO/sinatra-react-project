class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/students' do
    students = Student.all
    students.to_json
  end

  post '/students' do
    student = Student.new(params)
    if student.save
      student.to_json
    else
      halt 500, { error: 'Failed to create student' }.to_json
    end
  end

  # Define other routes for CRUD operations or additional functionality

  # Error handling
  not_found do
    halt 404, { error: 'Route not found' }.to_json
  end

  error do
    halt 500, { error: 'Internal server error' }.to_json
  end
end
