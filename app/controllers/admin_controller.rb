class AdminController < ApplicationController
  def index
    @total_words = Word.count
  end
end
