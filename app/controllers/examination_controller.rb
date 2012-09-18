class ExaminationController < ApplicationController
  def all
        @topics = Topic.all
        @counter = Topic.count
  end

  def new
    @topic = Topic.new
    @topicss = Topic.all
   
  end

  def create
    @topic = Topic.new
  end

  
  def show
  end

  def calification
  end
end
