class MainController < ApplicationController
    skip_before_action :authorize
  def index
  @categories = Category.all
  @word_types = WordType.all
  end
end
