class UsersController < ApplicationController
  # Don't need to check login in order to create a new user!
  # index and show temporarily skipped for dev purposes
  skip_before_action :authorized, only: [:create, :index, :show]

  def index
    render plain:  "Lmao"
  end

  def create
    render plain:  "Lmao"
  end

  def show
    render plain: "Lmao"
  end

end
