class ExportsController < ApplicationController
  before_filter :authenticate_admin

  respond_to :json, :html, :xlsx


  def import
    ::Refinery::PersonalInfos::PersonalInfo.import(params[:file])
    redirect_to root_url, notice: "People imported."
  end

  def candidates
    @students = ::Refinery::PersonalInfos::PersonalInfo.all
    respond_to do |format|
      format.html {render xlsx: 'candidates.xlsx.axlsx',filename: "students-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'candidates.xlsx.axlsx',filename: "students-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xls {
        filename = "students-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@students.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end

  def companies
    @companies = ::Refinery::Companies::Company.all
    respond_to do |format|
      format.html {render xlsx: 'companies.xlsx.axlsx',filename: "companies-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'companies.xlsx.axlsx',filename: "companies-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xls {
        filename = "companies-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@companies.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end

  def job_applications
    @applications = if params[:company_id].present?
      company = ::Refinery::Companies::Company.find params[:company_id]
      company.job_applications
    else
      ::Refinery::Companies::JobApplication.all
    end
    respond_to do |format|
      format.html {render xlsx: 'applications.xlsx.axlsx',filename: "applications-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'applications.xlsx.axlsx',filename: "applications-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xls {
        filename = "applications-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@applications.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end

  def jobs
    @jobs = if params[:company_id].present?
      company = ::Refinery::Companies::Company.find params[:company_id]
      company.jobs
    else
      ::Refinery::Companies::Job.all
    end
    respond_to do |format|
      format.html {render xlsx: 'jobs.xlsx.axlsx',filename: "jobs-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'jobs.xlsx.axlsx',filename: "jobs-#{Time.now.strftime("%Y%m%d%H%M%S")}.xlsx", layout: 'excel'}
      format.xls {
        filename = "jobs-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@jobs.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end
end
