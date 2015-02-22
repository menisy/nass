# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS News engine
Refinery::News::Engine.load_seed

# Added by Refinery CMS HomePhotos extension
Refinery::HomePhotos::Engine.load_seed

User.create email: 'mo@mo.com',
                    password: '12345678',
                    password_confirmation: '12345678'
Role.create title: 'refinery'
Role.create title: 'superuser'

us = User.first

us.roles += Role.all

us.save

# Added by Refinery CMS Dynamicfields extension
Refinery::Dynamicfields::Engine.load_seed

# Added by Refinery CMS PersonalInfos extension
Refinery::PersonalInfos::Engine.load_seed
