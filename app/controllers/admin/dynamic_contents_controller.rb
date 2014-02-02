class Admin::DynamicContentsController < ApplicationController

  before_filter :authenticate_admin!

  layout 'admin'

  # GET /dynamic_contents
  # GET /dynamic_contents.json
  def index
    @dynamic_contents = DynamicContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dynamic_contents }
    end
  end

  # GET /dynamic_contents/1
  # GET /dynamic_contents/1.json
  def show
    @dynamic_content = DynamicContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dynamic_content }
    end
  end

  # GET /dynamic_contents/new
  # GET /dynamic_contents/new.json
  def new
    @dynamic_content = DynamicContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dynamic_content }
    end
  end

  # GET /dynamic_contents/1/edit
  def edit
    @dynamic_content = DynamicContent.find(params[:id])
  end

  # POST /dynamic_contents
  # POST /dynamic_contents.json
  def create
    @dynamic_content = DynamicContent.new(params[:dynamic_content])

    respond_to do |format|
      if @dynamic_content.save
        format.html { redirect_to admin_dynamic_content_path(@dynamic_content), notice: 'Dynamic content was successfully created.' }
        format.json { render json: admin_dynamic_content_path(@dynamic_content), status: :created, location: @dynamic_content }
      else
        format.html { render action: "new" }
        format.json { render json: @dynamic_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dynamic_contents/1
  # PUT /dynamic_contents/1.json
  def update
    @dynamic_content = DynamicContent.find(params[:id])

    respond_to do |format|
      if @dynamic_content.update_attributes(params[:dynamic_content])
        format.html { redirect_to @dynamic_content, notice: 'Dynamic content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dynamic_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_contents/1
  # DELETE /dynamic_contents/1.json
  def destroy
    @dynamic_content = DynamicContent.find(params[:id])
    @dynamic_content.destroy

    respond_to do |format|
      format.html { redirect_to admin_dynamic_contents_path }
      format.json { head :no_content }
    end
  end
end
