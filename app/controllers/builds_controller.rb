class BuildsController < ApplicationController

  def create
    build = Build.create(champion: params[:champion], inventory: params[:inventory], user: User.first)
  end

end
