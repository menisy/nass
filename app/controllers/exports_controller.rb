class ExportsController < ApplicationController
  before_filter :authenticate_admin

  respond_to :json, :html, :xlsx


  def import
    ::Refinery::PersonalInfos::PersonalInfo.import(params[:file])
    redirect_to :back, notice: "People imported."
  end

  def candidates
    #@students = ::Refinery::PersonalInfos::PersonalInfo.all
    exp = params[:export]
    to = Date.new(exp['to(1i)'].to_i, exp['to(2i)'].to_i, exp['to(3i)'].to_i)
    from = Date.new(exp['from(1i)'].to_i, exp['from(2i)'].to_i, exp['from(3i)'].to_i)
    range = " All "
    if exp[:export_all].to_i.zero?
      @students = ::Refinery::PersonalInfos::PersonalInfo.where(created_at: from.beginning_of_day..to.end_of_day)
      range = " from #{from.strftime("%y/%m/%d")} to #{to.strftime("%y/%m/%d")} "
    else
      @students = ::Refinery::PersonalInfos::PersonalInfo.all
    end
    respond_to do |format|
      format.html {render xlsx: 'candidates.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-individuals (#{range}).xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'candidates.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-individuals (#{range}).xlsx", layout: 'excel'}
      format.xls {
        filename = "#{Time.now.strftime("%y%m%d-%H%M%S")}-individuals (#{range}).xls"
        send_data(@students.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end

  def companies
    @companies = ::Refinery::Companies::Company.all
    respond_to do |format|
      format.html {render xlsx: 'companies.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-companies.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'companies.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-companies.xlsx", layout: 'excel'}
      format.xls {
        filename = "#{Time.now.strftime("%y%m%d-%H%M%S")}-companies.xls"
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
      format.html {render xlsx: 'applications.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-applications.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'applications.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-applications.xlsx", layout: 'excel'}
      format.xls {
        filename = "#{Time.now.strftime("%y%m%d-%H%M%S")}-applications.xls"
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
      format.html {render xlsx: 'jobs.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-jobs.xlsx", layout: 'excel'}
      format.xlsx {render xlsx: 'jobs.xlsx.axlsx',filename: "#{Time.now.strftime("%y%m%d-%H%M%S")}-jobs.xlsx", layout: 'excel'}
      format.xls {
        filename = "#{Time.now.strftime("%y%m%d-%H%M%S")}-jobs.xls"
        send_data(@jobs.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end
end
