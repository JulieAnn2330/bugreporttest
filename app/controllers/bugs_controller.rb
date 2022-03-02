class BugsController < ApplicationController
  before_action :set_bug, only: %i[ show edit update destroy upvote ]
  before_action :authenticate_user!, except: [ :index,:show ]
  before_action :correct_user, only: [ :edit, :update, :destroy ]

  # GET /bugs or /bugs.json
  def index
    @bugs = Bug.all
    @bugs = Bug.order('created_at DESC')
  end

  def search
    if params[:search].blank?
      redirect_to bugs_path and return 
      
    else
      @parameter = params[:search].downcase
      @results = Bug.all.where("lower(bug_status) LIKE :search", search: "%#{@parameter}%").order('created_at DESC') 
      end
  end


  # GET /bugs/1 or /bugs/1.json
  def show
  end

  # GET /bugs/new
  def new
   #@bug = Bug.new
   @bug = current_user.bugs.build
  end

  # GET /bugs/1/edit
  def edit
  end

  # POST /bugs or /bugs.json
  def create
    #@bug = Bug.new(bug_params)
    @bug = current_user.bugs.build(bug_params)
    respond_to do |format|
      if @bug.save
        format.html { redirect_to @bug, notice: "Bug was successfully created." }
        format.json { render :show, status: :created, location: @bug }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugs/1 or /bugs/1.json
  def update
    respond_to do |format|
      if @bug.update(bug_params)
        format.html { redirect_to @bug, notice: "Bug was successfully updated." }
        format.json { render :show, status: :ok, location: @bug }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends/1 or /friends/1.json
  def destroy
    @bug.destroy
    respond_to do |format|
      format.html { redirect_to bugs_url, notice: "Bug was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @bug = current_user.bugs.find_by(id: params[ :id ])
    redirect_to bugs_path, notice: "Not Authorized To Edit This Bug" if @bug.nil?
  end

  def upvote
    @bug.upvote_from current_user
    redirect_to bugs_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug
      @bug = Bug.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bug_params
      params.require(:bug).permit([:report_timestamp, :bug_status, :title_of_bug_report, :reporter_email, :hardware, :browser, :description_of_issue, :reproducible, :severity, :priority, :qa_team_member, :product_team_member, :referred_to, :user_id, :image, :number_of_reports, :area_interface, :website_url, :customer, :transaction_id, :vehicle_id, :resolution])
    end
 end
