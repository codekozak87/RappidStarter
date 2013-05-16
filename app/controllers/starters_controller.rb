class StartersController < ApplicationController


#Create

	def new
		@starter = Starter.new
	end

	def create
		@starter = Starter.new
		@starter.app_name = params[:app_name]
		@starter.problem = params[:problem]
		@starter.solution = params[:solution]
		@starter.user_stories = params[:user_stories]
		@starter.mock_ups = params[:mock_ups]
		@starter.layouts = params[:layouts]
		@starter.resources = params[:resources]
		@starter.associations = params[:associations]
		@starter.other_considerations = params[:other_considerations]

		if @starter.save
            redirect_to starters_url
          else
      render 'new'
    	end
	end


#Read

	def index

		@starters = Starter.all	
		
	end


	def show

		@starter = Starter.find_by_id(params[:id])
		
	end


#Update

	def edit
		@starter = Starter.find_by_id(params[:id])
		
	end


	def update
		@starter = Starter.find_by_id(params[:id])
		@starter.app_name = params[:app_name]
		@starter.problem = params[:problem]
		@starter.solution = params[:solution]
		@starter.user_stories = params[:user_stories]
		@starter.mock_ups = params[:mock_ups]
		@starter.layouts = params[:layouts]
		@starter.resources = params[:resources]
		@starter.associations = params[:associations]
		@starter.other_considerations = params[:other_considerations]

	if @starter.save
			redirect_to starters_url
		else
			render 'edit'
	end
end

#Delete

	def delete
		@starter = Starter.find_by_id(params[:id])
		@starter.destroy

			redirect_to starters_url
		end
		
end