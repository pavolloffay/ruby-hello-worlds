class HomeController < ApplicationController
  def index
  end
  
  def update
    logger.debug params
    render text: 'updated'
  end
end
