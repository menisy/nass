class JobsController < ApplicationController
  before_filter :authenticate_employer!, only: [:create, :update]

  before_filter :authenticate_owner, only: [:edit, :update]

  before_filter :authenticate_student!, only: [:apply]

  before_filter :authenticate!, except: [:index, :show]

  def index
    if employer_signed_in?
      @jobs = current_employer.company.jobs.filter(filter)
      @job = current_employer.company.jobs.build
    else
      @jobs = ::Refinery::Companies::Job.visible.filter(filter)
    end
  end

  def create
    @job = current_employer.company.jobs.build params[:job]
    @job.company = current_employer.company
    if @job.save!
      redirect_to :back, notice: 'Your job has been posted successfully'
    else
      @jobs = current_employer.company.jobs
      flash[:error] = 'Please enter the details correctly'
      render 'jobs/employer_jobs'
    end
  end

  def edit
    @job = ::Refinery::Companies::Job.find params[:id]
  end

  def update
    @job = ::Refinery::Companies::Job.find params[:id]
    if @job.update_attributes params[:job]
      redirect_to main_app.jobs_path, notice: 'Your job has been updated successfully'
    else
      render 'jobs/edit'
    end
  end

  def apply
    @job = ::Refinery::Companies::Job.find params[:id]
    unless current_student.applied_to? @job
      job_application = @job.job_applications.build
      job_application.student = current_student
      job_application.save
    else
      @error = I18n.t :applied_already
    end
  rescue Exception
  end

  def show
    @job = ::Refinery::Companies::Job.find params[:id]
    respond_to do |format|
     format.html
     format.js

    end
  end

private

  def authenticate_owner
    job = ::Refinery::Companies::Job.find params[:id]
    if job
      unless job.company.employer == current_employer
        render_unauthorized
      end
    end
  end

  def filter
    params[:filter] ? params[:filter] : {}
  end
end
