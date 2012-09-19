class HomeController < ApplicationController
  def index
    @websites = Website.all
  end
  def deleteurl
    # data is sent here in a variable called params
    val=params[:'address']
    a=Website.where(:address => val).delete_all
    render :json => a
  end
end
