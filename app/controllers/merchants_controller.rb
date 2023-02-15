# frozen_string_literal: true

# Merchants Controller
class MerchantsController < ApplicationController
  def index
    @merchants ||= MerchantFacade.index
  end

  def show
    @merchant ||= MerchantFacade.show(params[:id])
    @items ||= ItemFacade.index_by_merchant(params[:id])
  end
end
