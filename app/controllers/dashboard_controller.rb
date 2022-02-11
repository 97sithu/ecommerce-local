class DashboardController < ApplicationController
  def index
   @sellerCount=Seller.count
   @sellers=Seller.all
   @goodCount=Good.count
   @goods=Good.all
   @customerCount=Customer.count 
   @customers=Customer.all
  end
end
