class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new 
  end
  
  def create 
    binding.pry
    Student.create(first_name: params[:student][:first_name], last_name: [:student][:last_name])
        Post.create(title: params[:post][:title], description: params[:post][:description])

    
    
    redirect_to students_path
  end

end
