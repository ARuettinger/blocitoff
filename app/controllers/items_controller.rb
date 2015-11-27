class ItemsController < ApplicationController
  def create
  	@item = Item.new
  	@item = Item.new(item_params)
  	@item.user = current_user
  	if @item.save
  		flash[:notice] = "Item was created."
  		redirect_to root_url
  	else
  		flash[:error] = "There was an error saving the item."
  		redirect_to root_url
  	end
  end

  private
  def item_params
  	# form_for @item do |f|
  	#   <input name='item[name]' />
  	#   f.text_field :name
  	# {item: {name: "foo"}}
  	params.require(:item).permit(:name)
  end
end

