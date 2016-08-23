
class HelloWorld

  def call(env)
    [200, {'Content-Type' => 'text/plain'}, ['Hello World!']]
  end

end


class Middle

  def initialize(app, options={})
    @app = app
  end

  def call(env)
    puts "calling app with env: " + env.inspect
    @app.call(env)
  end

end

use Middle
run HelloWorld.new
