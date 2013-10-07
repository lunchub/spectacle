class IndexController < ApplicationController
  def index
    @scenarios = Scenario.all
    @questions = Question.all
  end
end
