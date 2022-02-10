class Admin::DashboardController < ApplicationController

  # before_filter :authenticate, :only => [:show]
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'], password: ENV['ADMIN_PASSWORD']

  def show
    @product_count = Product.count

    @soldout_count = Product.where(quantity: 0)
    @category_all = Category.all

  end
end
