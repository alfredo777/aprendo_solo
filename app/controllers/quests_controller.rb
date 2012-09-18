class QuestsController < ApplicationController
  def create
    @quest = Quest.new(params[:quest])

    if @quest.save
      redirect_to :back,:notice => "Se guardo exitosamente"
    else
      redirect_to :back,:notice => "No se guardo"
    end
  end
end
