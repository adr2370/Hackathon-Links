class MoreController < ApplicationController
  def add
  end
  def saveurl
    # data is sent here in a variable called params
    a = Website.new(:name => params['name'], :address => params['address'], :description => params['description'])
    a.save
    render :json => a
  end
end
