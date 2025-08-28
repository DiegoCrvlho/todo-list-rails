class HomeController < ApplicationController

  def index
    # render html: "Hello, world!".html_safe

    message = "<h1>Hello, world from rails 7</h1>"
    message += "<h2>Hello, world from rails 7</h2>"
    message += "<h3>Hello, world from rails 7</h3>"
    message += "<h4>Hello, world from rails 7</h4>"
    message += "<h5>Hello, world from rails 7</h5>"
    message += "<h6>Hello, world from rails 7</h6>"

    render html: message.html_safe;

  end

  def getquerystringvalues
    message = "";

    if params[:message]
      message += "<h1>Message is : " + params[:message] + "</h1>";
    else 
      message += "<h1>You haven't supplied any value for message</h1>";
    end

    if params[:country]
      message += "<h2>Country is : " + params[:country] + "</h2>";
    else 
      message += "<h2>You haven't supplied any value for country</h2>";
    end

    message += "<h1>Controller name is : " + params[:controller] + "</h1>";
    message += "<h2>Action name is : " + params[:action] + "</h2>";

    render html: message.html_safe;
  end

  def passDataToViews

    @message = "<h1>Hello, world from rails 7</h1>"
    @message += "<h2>Hello, world from rails 7</h2>"
    @message += "<h3>Hello, world from rails 7</h3>"
    @message += "<h4>Hello, world from rails 7</h4>"
    @message += "<h5>Hello, world from rails 7</h5>"
    @message += "<h6>Hello, world from rails 7</h6>"

  end

end
