class TestsController < ApplicationController

  def index
  end

  def get

    if request.xhr?
      response.headers["X-Ajax"] = "true"
    end

    respond_to do |format|
      format.html { render 'get-html' }
      format.js { }
    end
  end

end