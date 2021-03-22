class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @alpha = Customer.order(:name)
  end

  def missing_email
    @no_email = Customer.where("email LIKE ''")
  end
end
