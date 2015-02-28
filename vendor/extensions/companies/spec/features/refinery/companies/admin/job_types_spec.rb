# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Companies" do
    describe "Admin" do
      describe "job_types" do
        refinery_login_with :refinery_user

        describe "job_types list" do
          before do
            FactoryGirl.create(:job_type, :name => "UniqueTitleOne")
            FactoryGirl.create(:job_type, :name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.companies_admin_job_types_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.companies_admin_job_types_path

            click_link "Add New Job Type"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Companies::JobType.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Name can't be blank")
              Refinery::Companies::JobType.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:job_type, :name => "UniqueTitle") }

            it "should fail" do
              visit refinery.companies_admin_job_types_path

              click_link "Add New Job Type"

              fill_in "Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Companies::JobType.count.should == 1
            end
          end

          context "with translations" do
            before do
              Refinery::I18n.stub(:frontend_locales).and_return([:en, :cs])
            end

            describe "add a page with title for default locale" do
              before do
                visit refinery.companies_admin_job_types_path
                click_link "Add New Job Type"
                fill_in "Name", :with => "First column"
                click_button "Save"
              end

              it "should succeed" do
                Refinery::Companies::JobType.count.should == 1
              end

              it "should show locale flag for page" do
                p = Refinery::Companies::JobType.last
                within "#job_type_#{p.id}" do
                  page.should have_css("img[src='/assets/refinery/icons/flags/en.png']")
                end
              end

              it "should show name in the admin menu" do
                p = Refinery::Companies::JobType.last
                within "#job_type_#{p.id}" do
                  page.should have_content('First column')
                end
              end
            end

            describe "add a job_type with title for primary and secondary locale" do
              before do
                visit refinery.companies_admin_job_types_path
                click_link "Add New Job Type"
                fill_in "Name", :with => "First column"
                click_button "Save"

                visit refinery.companies_admin_job_types_path
                within ".actions" do
                  click_link "Edit this job_type"
                end
                within "#switch_locale_picker" do
                  click_link "Cs"
                end
                fill_in "Name", :with => "First translated column"
                click_button "Save"
              end

              it "should succeed" do
                Refinery::Companies::JobType.count.should == 1
                Refinery::Companies::JobType::Translation.count.should == 2
              end

              it "should show locale flag for page" do
                p = Refinery::Companies::JobType.last
                within "#job_type_#{p.id}" do
                  page.should have_css("img[src='/assets/refinery/icons/flags/en.png']")
                  page.should have_css("img[src='/assets/refinery/icons/flags/cs.png']")
                end
              end

              it "should show name in backend locale in the admin menu" do
                p = Refinery::Companies::JobType.last
                within "#job_type_#{p.id}" do
                  page.should have_content('First column')
                end
              end
            end

            describe "add a name with title only for secondary locale" do
              before do
                visit refinery.companies_admin_job_types_path
                click_link "Add New Job Type"
                within "#switch_locale_picker" do
                  click_link "Cs"
                end

                fill_in "Name", :with => "First translated column"
                click_button "Save"
              end

              it "should show title in backend locale in the admin menu" do
                p = Refinery::Companies::JobType.last
                within "#job_type_#{p.id}" do
                  page.should have_content('First translated column')
                end
              end

              it "should show locale flag for page" do
                p = Refinery::Companies::JobType.last
                within "#job_type_#{p.id}" do
                  page.should have_css("img[src='/assets/refinery/icons/flags/cs.png']")
                end
              end
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:job_type, :name => "A name") }

          it "should succeed" do
            visit refinery.companies_admin_job_types_path

            within ".actions" do
              click_link "Edit this job type"
            end

            fill_in "Name", :with => "A different name"
            click_button "Save"

            page.should have_content("'A different name' was successfully updated.")
            page.should have_no_content("A name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:job_type, :name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.companies_admin_job_types_path

            click_link "Remove this job type forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Companies::JobType.count.should == 0
          end
        end

      end
    end
  end
end
