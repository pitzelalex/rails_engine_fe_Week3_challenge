class ItemsController < ApplicationController
  def index
    @items = ItemFacade.index
  end
end
