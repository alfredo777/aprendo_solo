class AnswersController < ApplicationController
  def create
    @quest = Quest.new(params[:quest])
    respond_to do |format|
      if @quest.save
        format.html { redirect_to(:back, :notice => "Se guardo exitosamente" ) }
       # format.js
      else
        format.html { render :action => "No se guardo" }
       # format.js
        #@answer = @topic.quests.answers
      end
    end

  end
end
