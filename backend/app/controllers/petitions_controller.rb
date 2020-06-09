class PetitionsController < ApplicationController
  def index
    petitions = Petition.all 
    render json: petitions include: [:signees]
  end

  def show
    petition = Petition.find(params[:id])
    render json: petition include: [:signees]
  end

  def create
    petition = Petition.create(
      name: params[:name]
      description: params[:description]
      submit_to: params[:submit_to]
      signature_goal: params[:signature_goal]
    )
    render json: petition 
  end 

  def destroy
    petition = Petition.find(:id)
    petition.destroy 
    render status: :no_content
  end
end
