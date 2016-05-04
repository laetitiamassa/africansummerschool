class MyContentsController < ApplicationController
  before_action :set_my_content, only: [:show, :edit, :update, :destroy]

  # GET /my_contents
  # GET /my_contents.json
  def index
    @my_contents = MyContent.all
  end

  # GET /my_contents/1
  # GET /my_contents/1.json
  def show
  end

  # GET /my_contents/new
  def new
    @my_content = MyContent.new
  end

  # GET /my_contents/1/edit
  def edit
  end

  # POST /my_contents
  # POST /my_contents.json
  def create
    @my_content = MyContent.new(my_content_params)

    respond_to do |format|
      if @my_content.save
        format.html { redirect_to @my_content, notice: 'My content was successfully created.' }
        format.json { render :show, status: :created, location: @my_content }
      else
        format.html { render :new }
        format.json { render json: @my_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_contents/1
  # PATCH/PUT /my_contents/1.json
  def update
    respond_to do |format|
      if @my_content.update(my_content_params)
        format.html { redirect_to @my_content, notice: 'My content was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_content }
      else
        format.html { render :edit }
        format.json { render json: @my_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_contents/1
  # DELETE /my_contents/1.json
  def destroy
    @my_content.destroy
    respond_to do |format|
      format.html { redirect_to my_contents_url, notice: 'My content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_content
      @my_content = MyContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_content_params
      params.require(:my_content).permit(:home_content, :concept_content, :program_content, :about_content)
    end
end
