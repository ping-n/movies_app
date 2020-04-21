class MoviesController < ApplicationController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movies = Movie.create(movie_params)

    redirect_to @movies
  end

  def show
  end

  def edit

  end

  def update
    @movie.update(movie_params)
    redirect_to @movie
  end


  def destroy
    @movie.destroy
    redirect_to root_path
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :rating, :release_date)
    end

    def find_movie
      @movie = Movie.find(params[:id])
    end
end
