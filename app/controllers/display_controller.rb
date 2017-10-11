class DisplayController < ApplicationController
	def index
		@cats = Cat.all
		@todos = Todo.all
		@users = User.all
	end

	def create
		task = Todo.new(tasks: params[:todo][:tasks])
		task.save!
		redirect_to home_path
	end

	def new
		@todo = Todo.new
	end
end