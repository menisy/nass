# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "PersonalInfos" do
    describe "Admin" do
      describe "personal_infos" do
        refinery_login_with :refinery_user

        describe "personal_infos list" do
          before do
            FactoryGirl.create(:personal_info, :name => "UniqueTitleOne")
            FactoryGirl.create(:personal_info, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.personal_infos_admin_personal_infos_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.personal_infos_admin_personal_infos_path

            click_link "Add New Personal Info"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::PersonalInfos::PersonalInfo.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::PersonalInfos::PersonalInfo.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:personal_info, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.personal_infos_admin_personal_infos_path

              click_link "Add New Personal Info"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::PersonalInfos::PersonalInfo.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:personal_info, :name => "A name") }

          it "should succeed" do
            visit refinery.personal_infos_admin_personal_infos_path

            within ".actions" do
              click_link "Edit this personal info"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:personal_info, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.personal_infos_admin_personal_infos_path

            click_link "Remove this personal info forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::PersonalInfos::PersonalInfo.count.should == 0
          end
        end

      end
    end
  end
end
