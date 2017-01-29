class MainController < ApplicationController

  def index
  end

  def indexP
  	seshinit :visits, 0
  	session[:visits] += 1
  	session[:data] = params
  	abbr = {
		"Seattle" => "Seattle",
		"Silicon_Valley" => "Silicon Valley",
		"Los_Angeles" => "Los Angeles",
		"Dallas" => "Dallas",
		"WashingtonDC" => "Washington D.C.",
		"Chicago" => "Chicago",
  	}
  	session[:data]["location"] = abbr[params["location"]]
  	redirect_to '/result'
  end

  def result
  	@times = session[:visits]
  	@timesplur = @times == 1 ? '' : 's'
  	@message = "Thanks for submitting this form! You have submitted this form #{@times} time#{@timesplur} now."
  	@data = session[:data]
  end

  def clear
  	session.clear
  	redirect_to '/'
  end

end

def seshinit sesh, val
	session[sesh] = session[sesh] == nil ? val : session[sesh]
end