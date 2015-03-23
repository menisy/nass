require 'spec_helper'

module Refinery
  module Companies
    describe JobApplication do
      describe "validations" do
        subject do
          FactoryGirl.create(:job_application)
        end

        it { should be_valid }
        its(:errors) { should be_empty }
      end
    end
  end
end
