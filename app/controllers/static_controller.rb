class StaticController < ApplicationController
  def index
  end

  def route_catch
    render 'static/index'
  end
end
