class WordsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @words = Word.all
    @word = Word.new
  end
  
  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to words_index_path
    else
      render 'new'
    end
  end
  
  private
  
  def word_params
    params.require(:word).permit(:name)
  end
  
  
end
