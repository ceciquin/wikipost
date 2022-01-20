class WikipostsController < ApplicationController
  before_action :set_wikipost, only: %i[  edit update destroy show]

  # GET /wikiposts or /wikiposts.json
  def index
    @wikipost = Wikipost.all
  end

  # GET /wikiposts/1 or /wikiposts/1.json
  def show
  end

  def example
    render "example"
  end

  # GET /wikiposts/new
  def new
    @wikipost = Wikipost.new
  end

  # GET /wikiposts/1/edit
  def edit
  end

  # POST /wikiposts or /wikiposts.json
  def create
    @wikipost = Wikipost.new(wikipost_params)

    respond_to do |format|
      if @wikipost.save
        format.html { redirect_to wikipost_url(@wikipost), notice: "Wikipost was successfully created." }
        format.json { render :show, status: :created, location: @wikipost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wikipost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wikiposts/1 or /wikiposts/1.json
  def update
    respond_to do |format|
      if @wikipost.update(wikipost_params)
        format.html { redirect_to wikipost_url(@wikipost), notice: "you updated wiki post "+"\""+@wikipost.title+"\"" }
        format.json { render :show, status: :ok, location: @wikipost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wikipost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wikiposts/1 or /wikiposts/1.json
  def destroy
    @wikipost.destroy

    respond_to do |format|
      format.html { redirect_to wikiposts_url, notice: "Wikipost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wikipost
      @wikipost = Wikipost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wikipost_params
      params.fetch(:wikipost, {}).permit(:title, :description, :image, :author)
    end
end
