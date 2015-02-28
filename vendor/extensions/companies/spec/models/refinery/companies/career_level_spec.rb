require 'spec_helper'

module Refinery
  module Companies
    describe CareerLevel do
      describe "validations" do
        subject do
          FactoryGirl.create(:career_level,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
