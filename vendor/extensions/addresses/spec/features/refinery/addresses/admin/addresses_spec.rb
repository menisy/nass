# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Addresses" do
    describe "Admin" do
      describe "addresses" do
        refinery_login_with :refinery_user

        describe "addresses list" do
          before do
            FactoryGirl.create(:address, :name => "UniqueTitleOne")
            FactoryGirl.create(:address, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.addresses_admin_addresses_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.addresses_admin_addresses_path

            click_link "Add New Address"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Addresses::Address.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Addresses::Address.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:address, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.addresses_admin_addresses_path

              click_link "Add New Address"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Addresses::Address.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:address, :name => "A name") }

          it "should succeed" do
            visit refinery.addresses_admin_addresses_path

            within ".actions" do
              click_link "Edit this address"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:address, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.addresses_admin_addresses_path

            click_link "Remove this address forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Addresses::Address.count.should == 0
          end
        end

      end
    end
  end
end
