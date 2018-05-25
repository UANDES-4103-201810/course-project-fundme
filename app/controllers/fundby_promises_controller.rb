class FundbyPromisesController < ApplicationController
  before_action :set_fundby_promise, only: [:show, :edit, :update, :destroy]

  # GET /fundby_promises
  # GET /fundby_promises.json
  def index
    @fundby_promises = FundbyPromise.all
  end

  # GET /fundby_promises/1
  # GET /fundby_promises/1.json
  def show
  end

  # GET /fundby_promises/new
  def new
    @fundby_promise = FundbyPromise.new
  end

  # GET /fundby_promises/1/edit
  def edit
  end

  # POST /fundby_promises
  # POST /fundby_promises.json
  def create
    @fundby_promise = FundbyPromise.new(fundby_promise_params)

    respond_to do |format|
      if @fundby_promise.save
        format.html { redirect_to @fundby_promise, notice: 'Fundby promise was successfully created.' }
        format.json { render :show, status: :created, location: @fundby_promise }
      else
        format.html { render :new }
        format.json { render json: @fundby_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundby_promises/1
  # PATCH/PUT /fundby_promises/1.json
  def update
    respond_to do |format|
      if @fundby_promise.update(fundby_promise_params)
        format.html { redirect_to @fundby_promise, notice: 'Fundby promise was successfully updated.' }
        format.json { render :show, status: :ok, location: @fundby_promise }
      else
        format.html { render :edit }
        format.json { render json: @fundby_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundby_promises/1
  # DELETE /fundby_promises/1.json
  def destroy
    @fundby_promise.destroy
    respond_to do |format|
      format.html { redirect_to fundby_promises_url, notice: 'Fundby promise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundby_promise
      @fundby_promise = FundbyPromise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fundby_promise_params
      params.require(:fundby_promise).permit(:promise_id, :project_id, :user_id)
    end
end
