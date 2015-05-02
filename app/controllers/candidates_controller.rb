class CandidatesController < ApplicationController


  def index
    @candidates = ::Refinery::PersonalInfos::PersonalInfo.filter(filter)
    @candidates = @candidates.nass_graduate + @candidates.not_nass_graduate
    render 'refinery/pages/candidates'
  end

private

  def filter
    params[:filter] ? params[:filter] : {}
  end
end