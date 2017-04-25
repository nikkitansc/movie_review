class ReviewsController < ApplicationController
    
    def new
        @review = Review.new
    end
    
    def create
        @movie = Movie.find(params[:movie_id])
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        @review.movie_id = @movie.id

        if @review.save
            redirect_to @movie
        else
            render 'new'
        end
    end
        
    private
    
    def review_params
        params.require(:review).permit(:rating, :comment)
    end
    
    def find_movie
        @movie = Movie.find(params[:movie_id])
    end
end
