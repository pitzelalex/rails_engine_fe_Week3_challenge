# frozen_string_literal: true

# Merchants Controller
class MerchantsController < ApplicationController
  def index
    @merchants ||= MerchantFacade.all
  end

  def show
  end
end
