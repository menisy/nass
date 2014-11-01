# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "HomePhotos" do
    describe "Admin" do
      describe "home_photos" do
        refinery_login_with :refinery_user

        describe "home_photos list" do
          before do
            FactoryGirl.create(:home_photo, :link => "UniqueTitleOne")
            FactoryGirl.create(:home_photo, :link => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.home_photos_admin_home_photos_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.home_photos_admin_home_photos_path

            click_link "Add New Home Photo"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Link", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::HomePhotos::HomePhoto.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Link can't be blank")
              Refinery::HomePhotos::HomePhoto.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:home_photo, :link => "UniqueTitle") }

            it "should fail" do
              visit refinery.home_photos_admin_home_photos_path

              click_link "Add New Home Photo"

              fill_in "Link", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::HomePhotos::HomePhoto.count.should == 1
            end
          end

          context "with translations" do
            before do
              Refinery::I18n.stub(:frontend_locales).and_return([:en, :cs])
            end

            describe "add a page with title for default locale" do
              before do
                visit refinery.home_photos_admin_home_photos_path
                click_link "Add New Home Photo"
                fill_in "Link", :with => "First column"
                click_button "Save"
              end

              it "should succeed" do
                Refinery::HomePhotos::HomePhoto.count.should == 1
              end

              it "should show locale flag for page" do
                p = Refinery::HomePhotos::HomePhoto.last
                within "#home_photo_#{p.id}" do
                  page.should have_css("img[src='/assets/refinery/icons/flags/en.png']")
                end
              end

              it "should show link in the admin menu" do
                p = Refinery::HomePhotos::HomePhoto.last
                within "#home_photo_#{p.id}" do
                  page.should have_content('First column')
                end
              end
            end

            describe "add a home_photo with title for primary and secondary locale" do
              before do
                visit refinery.home_photos_admin_home_photos_path
                click_link "Add New Home Photo"
                fill_in "Link", :with => "First column"
                click_button "Save"

                visit refinery.home_photos_admin_home_photos_path
                within ".actions" do
                  click_link "Edit this home_photo"
                end
                within "#switch_locale_picker" do
                  click_link "Cs"
                end
                fill_in "Link", :with => "First translated column"
                click_button "Save"
              end

              it "should succeed" do
                Refinery::HomePhotos::HomePhoto.count.should == 1
                Refinery::HomePhotos::HomePhoto::Translation.count.should == 2
              end

              it "should show locale flag for page" do
                p = Refinery::HomePhotos::HomePhoto.last
                within "#home_photo_#{p.id}" do
                  page.should have_css("img[src='/assets/refinery/icons/flags/en.png']")
                  page.should have_css("img[src='/assets/refinery/icons/flags/cs.png']")
                end
              end

              it "should show link in backend locale in the admin menu" do
                p = Refinery::HomePhotos::HomePhoto.last
                within "#home_photo_#{p.id}" do
                  page.should have_content('First column')
                end
              end
            end

            describe "add a link with title only for secondary locale" do
              before do
                visit refinery.home_photos_admin_home_photos_path
                click_link "Add New Home Photo"
                within "#switch_locale_picker" do
                  click_link "Cs"
                end

                fill_in "Link", :with => "First translated column"
                click_button "Save"
              end

              it "should show title in backend locale in the admin menu" do
                p = Refinery::HomePhotos::HomePhoto.last
                within "#home_photo_#{p.id}" do
                  page.should have_content('First translated column')
                end
              end

              it "should show locale flag for page" do
                p = Refinery::HomePhotos::HomePhoto.last
                within "#home_photo_#{p.id}" do
                  page.should have_css("img[src='/assets/refinery/icons/flags/cs.png']")
                end
              end
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:home_photo, :link => "A link") }

          it "should succeed" do
            visit refinery.home_photos_admin_home_photos_path

            within ".actions" do
              click_link "Edit this home photo"
            end

            fill_in "Link", :with => "A different link"
            click_button "Save"

            page.should have_content("'A different link' was successfully updated.")
            page.should have_no_content("A link")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:home_photo, :link => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.home_photos_admin_home_photos_path

            click_link "Remove this home photo forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::HomePhotos::HomePhoto.count.should == 0
          end
        end

      end
    end
  end
end
