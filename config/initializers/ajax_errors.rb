class AjaxErrors
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, response = @app.call(env)
    if ajax_header = headers['X-Ajax']
      if ajax_header == 'true'
        [200, {"Content-Type" => "script/javascript"}, ["alert('Ajax');"]]
      end
    else
      [200, {"Content-Type" => "text/html"}, [response.body]]
    end
  end
end