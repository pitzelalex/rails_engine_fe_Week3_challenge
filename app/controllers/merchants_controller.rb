# frozen_string_literal: true

# Merchants Controller
class MerchantsController < ApplicationController
  def index
    @mercahnts = MerchantFacade.all
  end
end
