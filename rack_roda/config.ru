require 'roda'

class MyApp < Roda

  route do |r|

    # GET /
    r.root do
      r.redirect "/hello"
    end
    
    r.on "hello" do
      
      # GET /hello
      r.get do
        "by GET"
      end

      # POST /hello
      r.post do
        "by POST"
      end
    
    end

  end
  
end

run MyApp
