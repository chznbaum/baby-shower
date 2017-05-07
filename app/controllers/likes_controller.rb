class LikesController < ApplicationController

    before_action :find_likeable

    def new
        @like = Like.new
    end

    def create
        @like = @likeable.likes.new(like_params)
        if @like.save
            redirect_to :back, notice: "Your like was successful."
        else
            redirect_to :back, notice: "Your like was unsucessful."
        end
    end

    private
    def like_params
        params.require(:like).permit(:user_id, :update_id, :comment_id)
    end

    def find_likeable
        @likeable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
        @likeable = Update.find_by_id(params[:update_id]) if params[:update_id]
    end
end