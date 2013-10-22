class MoviesController < ApplicationController
	def index
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def list
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to "/movies/#{@movie.id}"
		else
			render :new
		end
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		if @movie.update(movie_params)
			redirect_to "/movies/#{@movie.id}"
		else
		render :edit
		end
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :year_released, :description)
	end
 
end
