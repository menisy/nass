class RegistrationsController < ApplicationController

  def create
    @student = Student.new params[:student]
    @info = @student.build_personal_info params[:personal_info]
    @info.email = @student.email
    if @student.save && @info.save
      I18n.locale = params[:lcl]
      redirect_to "/#{params[:lcl]}", flash: {notice: t(:reg_success)}
    else
      I18n.locale = params[:lcl]
      flash[:error] = t(:reg_fail)
      render "registration"
    end
  end

  def update

  end
end