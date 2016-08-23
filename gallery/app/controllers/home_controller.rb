class HomeController < ApplicationController
    
    def index
          redirect_to galleries_path
    end
end
