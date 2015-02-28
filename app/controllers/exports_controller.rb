class ExportsController < ApplicationController
  before_filter :authenticate_admin

  respond_to :json, :html, :xlsx

  def download
    @students = ::Refinery::PersonalInfos::PersonalInfo.all
    respond_to do |format| 
      format.xlsx {render xlsx: 'download.xlsx.axlsx',filename: "students.xlsx", layout: 'excel'}
      format.xls {
        filename = "students-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls"
        send_data(@students.to_xls, :type => "application/excel; charset=utf-8; header=present", :filename => filename)
      }
    end
  end
end
