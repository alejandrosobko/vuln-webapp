class CommentsController < ApplicationController
    def create
      user_id = params[:user_id].to_i
      if user_id == 1 # admin
        user = User.find_by_id(user_id)
        comment = Comment.new
        comment.text = params[:text]
        comment.user = user
        comment.save!
      end

      redirect_to root_url
    end
end
