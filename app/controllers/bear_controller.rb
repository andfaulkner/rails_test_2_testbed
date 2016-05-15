class BearController < ApplicationController
  # GET /bear/:id
	def show
		puts "hello!"
	end

  # GET /bear/new
	def new
	end

  # GET /bear/:id/edit
	def edit
	end

  # POST /bear
	def create
		puts "yo!"
	end

  # PUT /bear/:id
	def update
	end

  # DELETE /bear/:id
	def destroy
		# bear = Bear.find(params[:id])
		# bear.destroy if bear
	end

	def bears_path
		puts "hello!"
	end

end
