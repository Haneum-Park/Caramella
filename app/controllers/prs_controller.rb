class PrsController < ApplicationController
  before_action :set_pr, only: [:show, :edit, :update, :destroy]

  # GET /prs
  # GET /prs.json
  def index # .order("create_at DESC") 역순정렬
    @prs = Pr.order("created_at DESC").page(params[:page]).per(10)
  end

  # GET /prs/1
  # GET /prs/1.json
  def show
  end

  # GET /prs/new
  def new
    @pr = Pr.new
  end

  # GET /prs/1/edit
  def edit
  end

  # POST /prs
  # POST /prs.json
  def create
    @pr = Pr.new(pr_params)

    respond_to do |format|
      if @pr.save
        format.html { redirect_to @pr, notice: 'Pr was successfully created.' }
        format.json { render :show, status: :created, location: @pr }
      else
        format.html { render :new }
        format.json { render json: @pr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prs/1
  # PATCH/PUT /prs/1.json
  def update
    respond_to do |format|
      if @pr.update(pr_params)
        format.html { redirect_to @pr, notice: 'Pr was successfully updated.' }
        format.json { render :show, status: :ok, location: @pr }
      else
        format.html { render :edit }
        format.json { render json: @pr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prs/1
  # DELETE /prs/1.json
  def destroy
    @pr.destroy
    respond_to do |format|
      format.html { redirect_to prs_url, notice: 'Pr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def page_title
      "PR | 카라멜라 공지사항"
  end
  
  def page_content
      "PUBLIC RELATION"
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr
      @pr = Pr.find(params[:id])
    end
    
    # Only allow a list of trusted parameters through.
    def pr_params
      params.require(:pr).permit(:title, :content, :date)
    end
  # 조회수 기록 기준 (액션 : show / 기준 : impressionable_id(데이터 ID값), IP주소)
  impressionist :actions=>[:show,:index]
end
