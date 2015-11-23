class ItemsController < ApplicationController
  def create
  	@item = Item.new
  	@item.create = params[:item][:current_user]
  	if @item.save
  		flash[:notice] = "Item was created."
  		redirect_to @item
  	else
  		flash[:error] = "There was an error saving the item."
  		redirect_to @current_user
  end
end
