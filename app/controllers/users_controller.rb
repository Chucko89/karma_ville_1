class UsersController < ApplicationController
  def index
    @users = User.by_karma.limit(User::PER_PAGE)
  end

  def show
    @page_id = params[:id].to_i
    @users = User.page(params[:id].to_i)
    # @users = User.by_karma.limit(User::PER_PAGE).offset(params[:id].to_i * User::PER_PAGE)
    render :index
  end

end
