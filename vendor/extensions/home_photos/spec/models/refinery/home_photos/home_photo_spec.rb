require 'spec_helper'

module Refinery
  module HomePhotos
    describe HomePhoto do
      describe "validations" do
        subject do
          FactoryGirl.create(:home_photo,
          :link => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:link) { should == "Refinery CMS" }
      end
    end
  end
end
