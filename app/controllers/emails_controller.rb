class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.js {}
    end
  end

  def create
    @email = Email.create(object: Faker::Games::Pokemon.name, body: Faker::Games::Pokemon.location)

    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
    
  end
end
