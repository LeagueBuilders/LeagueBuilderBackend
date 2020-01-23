class BuildsController < ApplicationController

  def create
    build = Build.create(champion: params[:champion], inventory: params[:inventory], user: User.first)

    render json: build.to_json
  end

  def show
    let builds = Build.find_all_by(champion: params[:champion])

    render json: builds.to_json
  end

end
