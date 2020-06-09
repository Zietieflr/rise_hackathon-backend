class SigneesController < ApplicationController
  def index
    signees = Signee.all 
    render json: signees, include: [:petitions]
  end

  def show
    signee = Signee.find(params[:id])
    render json: signee, include: [:petitions]
  end

  def create
    signee = Signee.create(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      address: params[:address]
    )
    render json: signee 
  end 

  def destroy
    signee = Signee.find(:id)
    signee.destroy 
    render status: :no_content
  end
end
