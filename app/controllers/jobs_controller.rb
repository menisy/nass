class JobsController < ApplicationController
  before_filter :authenticate_employer!, only: [:create, :update]
  
  def create
    @job = current_employer.company.jobs.build params[:job]
    @job.company = current_employer.company
    if @job.save
      redirect_to :back, notice: 'Your job has been posted successfully'
    else
      @jobs = current_employer.company.jobs
      flash[:error] = 'Please enter the details correctly'
      render 'jobs/employer_jobs'
    end
  end

  def update

  end
end
