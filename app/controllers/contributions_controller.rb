class ContributionsController < ApplicationController
  before_action :set_contribution, only: [:show, :edit, :update, :destroy]
  

  # GET /contributions
  # GET /contributions.json
  def index
    # @contributions = Contribution.all
    
    @search = Contribution.search(params[:q])
    @result = @search.result
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @result
      }
    end  
  end

  # GET /contributions/1
  # GET /contributions/1.json
  def show
    @favorite = current_user.favorites.find_by(contribution_id: @contribution.id)
  end

  # GET /contributions/new
  def new
    @contribution = Contribution.new
  end

  # GET /contributions/1/edit
  def edit
  end

  # POST /contributions
  # POST /contributions.json
  def create
    @contribution = current_user.contributions.build(contribution_params)
    respond_to do |format|
      
      if @contribution.save
        format.html { redirect_to contributions_path, notice: '新規投稿が完了しました。' }
        format.json { render :show, status: :created, location: @contribution }
      else
        format.html { render :new }
        format.json { render json: @contribution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contributions/1
  # PATCH/PUT /contributions/1.json
  def update
    respond_to do |format|
      if @contribution.update(contribution_params)
        format.html { redirect_to @contribution, notice: '更新しました。' }
        format.json { render :show, status: :ok, location: @contribution }
      else
        format.html { render :edit }
        format.json { render json: @contribution.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @contribution.destroy
    respond_to do |format|
      format.html { redirect_to contributions_url, notice: '投稿を削除しました。' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contribution
      @contribution = Contribution.find(params[:id])
    end

    
    def contribution_params
      params.require(:contribution).permit(:title, :overview, :file, :modified, :category)
    end
end