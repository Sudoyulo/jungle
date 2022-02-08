class Admin::DashboardController < ApplicationController

  before_filter :authenticate, :only => [:show]


  def show
    @product_count = Product.count

    @soldout_count = Product.where(quantity: 0)
    @category_all = Category.all

  end
end
