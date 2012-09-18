class VideoLoadersController < ApplicationController
  # GET /video_loaders
  # GET /video_loaders.json
  def index
    @video_loaders = VideoLoader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @video_loaders }
    end
  end

  # GET /video_loaders/1
  # GET /video_loaders/1.json
  def show
    @video_loader = VideoLoader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video_loader }
    end
  end

  # GET /video_loaders/new
  # GET /video_loaders/new.json
  def new
    @video_loader = VideoLoader.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video_loader }
    end
  end

  # GET /video_loaders/1/edit
  def edit
    @video_loader = VideoLoader.find(params[:id]) 
  end

  # POST /video_loaders
  # POST /video_loaders.json
  def create
    @video_loader = VideoLoader.new(params[:video_loader])
    @video_loader.save!
    respond_to do |format|
      if @video_loader.save!
        format.html { redirect_to  course_video_loader_path, notice: 'Video loader was successfully created.' }
      end
    end
  end

  # PUT /video_loaders/1
  # PUT /video_loaders/1.json
  def update
    @video_loader = VideoLoader.find(params[:id])

    respond_to do |format|
      if @video_loader.update_attributes(params[:video_loader])
        format.html { redirect_to video_loader_path, notice: 'Video loader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video_loader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_loaders/1
  # DELETE /video_loaders/1.json
  def destroy
    @video_loader = VideoLoader.find(params[:id])
    @video_loader.destroy

    respond_to do |format|
      format.html { redirect_to user_videos_path}
      format.json { head :no_content }
    end
  end
  
end
