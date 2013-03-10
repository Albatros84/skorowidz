# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130310120452) do

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "client"
    t.string   "project_type"
    t.string   "highrise"
    t.string   "skydrive"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "basecamp"
    t.string   "participant_count"
    t.string   "game"
    t.text     "groups_division"
    t.string   "number_of_rooms"
    t.date     "date_of_game"
    t.string   "hour_duration"
    t.string   "localization"
    t.string   "contacts_client"
    t.string   "contacts_hotel"
    t.text     "transport_details"
    t.text     "accomodation"
    t.text     "target_agreed_with_customer"
    t.text     "other_expectations"
    t.string   "subject"
    t.text     "profile_of_participants"
    t.string   "contact_person_on_client_side"
    t.string   "host_of_the_meeting"
    t.text     "other_information"
    t.string   "leading_head_coach"
    t.string   "second_coach"
    t.string   "CPD_trainee"
    t.text     "assistants"
    t.text     "agenda_of_meeting"
    t.text     "resposibilities_division"
    t.text     "after_game_summary"
    t.text     "invitation_for_participants"
    t.text     "purpose_and_other_expectations"
    t.text     "participants_short_description_in_groups"
    t.text     "course_of_training"
    t.text     "on_fly_findings_and_suggestions"
    t.text     "project_evaluation"
    t.text     "proposals_for_sales_potential"
    t.text     "merytoryka"
    t.text     "conduct_and_summary_of_game"
    t.text     "notes_on_materials"
    t.text     "notes_on_organization"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "role"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "welcomes", :force => true do |t|
    t.string   "name"
    t.string   "client"
    t.string   "type"
    t.string   "highrise"
    t.string   "skydrive"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
