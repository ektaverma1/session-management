class HomeController < ApplicationController
	before_filter :set_session
  def moo
  end

  def cho
  end

  def index
  end

  def reset
    reset_session
    @app_session = nil
  end

  private
  def set_session
  	@app_session = session[:app_session]
  	@app_session ||= Array.new
  	@app_session.push(request.url)
  	if @app_session.count > 3
  		@app_session.shift
  	end
  	session[:app_session] = @app_session
  end

end
