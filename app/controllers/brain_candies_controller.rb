class BrainCandiesController < ApplicationController
  # GET /brain_candies
  # GET /brain_candies.json
  def index
    @brain_candies = BrainCandy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brain_candies }
    end
  end

  # GET /brain_candies/1
  # GET /brain_candies/1.json
  def show
    @brain_candy = BrainCandy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brain_candy }
    end
  end

  # GET /brain_candies/new
  # GET /brain_candies/new.json
  def new
    @brain_candy = BrainCandy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brain_candy }
    end
  end

  # GET /brain_candies/1/edit
  def edit
    @brain_candy = BrainCandy.find(params[:id])
  end

  # POST /brain_candies
  # POST /brain_candies.json
  def create
    @brain_candy = BrainCandy.new(params[:brain_candy])

    respond_to do |format|
      if @brain_candy.save
        format.html { redirect_to @brain_candy, notice: 'Brain candy was successfully created.' }
        format.json { render json: @brain_candy, status: :created, location: @brain_candy }
      else
        format.html { render action: "new" }
        format.json { render json: @brain_candy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brain_candies/1
  # PUT /brain_candies/1.json
  def update
    @brain_candy = BrainCandy.find(params[:id])

    respond_to do |format|
      if @brain_candy.update_attributes(params[:brain_candy])
        format.html { redirect_to @brain_candy, notice: 'Brain candy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brain_candy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brain_candies/1
  # DELETE /brain_candies/1.json
  def destroy
    @brain_candy = BrainCandy.find(params[:id])
    @brain_candy.destroy

    respond_to do |format|
      format.html { redirect_to brain_candies_url }
      format.json { head :no_content }
    end
  end
end
