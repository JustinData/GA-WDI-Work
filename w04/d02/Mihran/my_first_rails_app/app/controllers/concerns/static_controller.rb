require 'pry'

class StaticController < ApplicationController

  def index
    binding.pry
    render :index
  end
end

def woah
  render :woah
end
