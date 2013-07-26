class OurblogsController < ApplicationController
  # GET /ourblogs
  # GET /ourblogs.json
  def index
    @ourblogs = Ourblog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ourblogs }
    end
  end

  # GET /ourblogs/1
  # GET /ourblogs/1.json
  def show
    @ourblog = Ourblog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ourblog }
    end
  end

  # GET /ourblogs/new
  # GET /ourblogs/new.json
  def new
    @ourblog = Ourblog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ourblog }
    end
  end

  # GET /ourblogs/1/edit
  def edit
    @ourblog = Ourblog.find(params[:id])
  end

  # POST /ourblogs
  # POST /ourblogs.json
  def create
    @ourblog = Ourblog.new(params[:ourblog])

    respond_to do |format|
      if @ourblog.save
        format.html { redirect_to @ourblog, notice: 'Ourblog was successfully created.' }
        format.json { render json: @ourblog, status: :created, location: @ourblog }
      else
        format.html { render action: "new" }
        format.json { render json: @ourblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ourblogs/1
  # PUT /ourblogs/1.json
  def update
    @ourblog = Ourblog.find(params[:id])

    respond_to do |format|
      if @ourblog.update_attributes(params[:ourblog])
        format.html { redirect_to @ourblog, notice: 'Ourblog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ourblog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ourblogs/1
  # DELETE /ourblogs/1.json
  def destroy
    @ourblog = Ourblog.find(params[:id])
    @ourblog.destroy

    respond_to do |format|
      format.html { redirect_to ourblogs_url }
      format.json { head :no_content }
    end
  end
end
