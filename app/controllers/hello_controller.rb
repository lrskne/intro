class HelloController < ApplicationController
  def from_view
  end

  def from_controller
    @hello = "Hello World from a Rails Controller"
  end
end
