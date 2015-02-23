require 'spec_helper'

module Refinery
  module Companies
    describe Company do
      describe "validations" do
        subject do
          FactoryGirl.create(:company,
          :company_name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:company_name) { should == "Refinery CMS" }
      end
    end
  end
end
