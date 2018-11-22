class ProblemController < ApplicationController
	def list
		@problems = Problem.all
	end

	def show
		@problem = Problem.find(params[:id])
	end

	def new
		@problem = Problem.new
		@sites = Site.all
	end

	def problem_params
		params.require(:problems).permit(:number, :title, :site_name, :difficulty, :solution)
	end
	def create
		@problem = Problem.new(problem_params)

		if @problem.save
			redirect_to :action => 'list'
		else
			render :action => 'new'
		end
	end

	def edit
		@problem = Problem.find(params[:id]) 
		@sites = Site.all
	end

	def problem_param
		params.require(:problem).permit(:number, :title, :site_name, :difficulty, :solution)
	end  
	def update
		@problem = Problem.find(params[:id])

		if @problem.update_attributes(problem_param)
			redirect_to :action => 'show', :id => @problem
		else
			@sites = Site.all
			render :action => 'edit'
		end
	end

	def delete
		Problem.find(params[:id]).destroy
		redirect_to :action => "list"
	end

end
