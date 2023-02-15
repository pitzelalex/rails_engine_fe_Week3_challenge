class ItemsController < ApplicationController
  def index
    @items = ItemFacade.index
  end

  def show
    @item = ItemFacade.show
  end
end
