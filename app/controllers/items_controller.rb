class ItemsController < ApplicationController
  def create
  	@item = Item.new
  	@item = Item.new(item_params)
  	@item.user = current_user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "item saved successfully."
    else
      flash[:error] = "item failed to save."
    end
    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item was completed."
    else
      flash[:notice] = "Item could not be completed. Try harder next time."
    end
    respond_to do |format|
      format.html
      format.js
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

