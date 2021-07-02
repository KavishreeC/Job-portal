# frozen_string_literal: true

class JobsController < ApplicationController
  before_action :set_job, only: %i[show destroy update edit]
  before_action :authenticate_user!
  # GET /jobs or /jobs.json
  def index
    @jobs = Job.order(:name).page(params[:page]).includes([:job_applications])
    authorize Job
  end

  # GET /jobs/1 or /jobs/1.json
  def show
    @job = Job.friendly.find(params[:id])
  end

  # GET /jobs/new
  def new
    @job = Job.new
    authorize @job
  end

  # GET /jobs/1/edit
  def edit
    authorize @job
  end

  # POST /jobs or /jobs.json
  def create
    @job = Job.new(job_params)
    authorize @job
    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        # format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1 or /jobs/1.json
  def update
    authorize @job
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1 or /jobs/1.json
  def destroy
    authorize @job
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def apply
    job_id = params[:job_id]
    job_name = params[:job_name]
    job_position = params[:job_position]
    @user = current_user
    JobApplication.create(user_id: current_user.id, job_id: job_id, email: current_user.email, name: job_name,
                          Position: job_position)
    # flash[:alert] = "You are not authorized to perform this action."
    JobMailer.new_job.deliver_later
    flash[:notice] = 'Congratulations! You have successfully applied'
    redirect_to jobseeker_path
  end

  def jobseeker
    @jobs = Job.all
    authorize Job
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.friendly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def job_params
    params.require(:job).permit(:name, :desc, :position, :count)
  end
end
