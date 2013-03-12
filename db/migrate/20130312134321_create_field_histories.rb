class CreateFieldHistories < ActiveRecord::Migration
  def change
    create_table :field_histories do |t|
      t.string :name_history
      t.string :client_history
      t.string :project_type_history
      t.string :highrise_history
      t.string :skydrive_history
      t.string :basecamp_history
      t.string :participant_count_history
      t.string :game_history
      t.string :groups_division_history
      t.string :number_of_rooms_history
      t.string :date_of_game_history
      t.string :hour_duration_history
      t.string :localization_history
      t.string :contacts_client_history
      t.string :contacts_hotel_history
      t.string :transport_details_history
      t.string :accomodation_history
      t.string :target_agreed_with_customer_history
      t.string :other_expectations_history
      t.string :subject_history
      t.string :profile_of_participants_history
      t.string :contact_person_on_client_side_history
      t.string :host_of_the_meeting_history
      t.string :other_information_history
      t.string :leading_head_coach_history
      t.string :second_coach_history
      t.string :CPD_trainee_history
      t.string :assistants_history
      t.string :agenda_of_meeting_history
      t.string :responsibilities_division_history
      t.string :after_game_summary_history
      t.string :invitation_for_participants_history
      t.string :purpose_and_other_expectations_history
      t.string :participants_short_description_in_groups_history
      t.string :course_of_training_history
      t.string :on_fly_findings_and_suggestions_history
      t.string :project_evaluation_history
      t.string :proposals_for_sales_potential_history
      t.string :merytoryka_history
      t.string :conduct_and_summary_of_game_history
      t.string :notes_on_materials_history
      t.string :notes_on_organization_history
      
      t.date :name_history_update
      t.date :client_history_update
      t.date :project_type_history_update
      t.date :highrise_history_update
      t.date :skydrive_history_update
      t.date :basecamp_history_update
      t.date :participant_count_history_update
      t.date :game_history_update
      t.date :groups_division_history_update
      t.date :number_of_rooms_history_update
      t.date :date_of_game_history_update
      t.date :hour_duration_history_update
      t.date :localization_history_update
      t.date :contacts_client_history_update
      t.date :contacts_hotel_history_update
      t.date :transport_details_history_update
      t.date :accomodation_history_update
      t.date :target_agreed_with_customer_history_update
      t.date :other_expectations_history_update
      t.date :subject_history_update
      t.date :profile_of_participants_history_update
      t.date :contact_person_on_client_side_history_update
      t.date :host_of_the_meeting_history_update
      t.date :other_information_history_update
      t.date :leading_head_coach_history_update
      t.date :second_coach_history_update
      t.date :CPD_trainee_history_update
      t.date :assistants_history_update
      t.date :agenda_of_meeting_history_update
      t.date :responsibilities_division_history_update
      t.date :after_game_summary_history_update
      t.date :invitation_for_participants_history_update
      t.date :purpose_and_other_expectations_history_update
      t.date :participants_short_description_in_groups_history_update
      t.date :course_of_training_history_update
      t.date :on_fly_findings_and_suggestions_history_update
      t.date :project_evaluation_history_update
      t.date :proposals_for_sales_potential_history_update
      t.date :merytoryka_history_update
      t.date :conduct_and_summary_of_game_history_update
      t.date :notes_on_materials_history_update
      t.date :notes_on_organization_history_update
      
      t.integer :name_history_id
      t.integer :client_history_id
      t.integer :project_type_history_id
      t.integer :highrise_history_id
      t.integer :skydrive_history_id
      t.integer :basecamp_history_id
      t.integer :participant_count_history_id
      t.integer :game_history_id
      t.integer :groups_division_history_id
      t.integer :number_of_rooms_history_id
      t.integer :date_of_game_history_id
      t.integer :hour_duration_history_id
      t.integer :localization_history_id
      t.integer :contacts_client_history_id
      t.integer :contacts_hotel_history_id
      t.integer :transport_details_history_id
      t.integer :accomodation_history_id
      t.integer :target_agreed_with_customer_history_id
      t.integer :other_expectations_history_id
      t.integer :subject_history_id
      t.integer :profile_of_participants_history_id
      t.integer :contact_person_on_client_side_history_id
      t.integer :host_of_the_meeting_history_id
      t.integer :other_information_history_id
      t.integer :leading_head_coach_history_id
      t.integer :second_coach_history_id
      t.integer :CPD_trainee_history_id
      t.integer :assistants_history_id
      t.integer :agenda_of_meeting_history_id
      t.integer :responsibilities_division_history_id
      t.integer :after_game_summary_history_id
      t.integer :invitation_for_participants_history_id
      t.integer :purpose_and_other_expectations_history_id
      t.integer :participants_short_description_in_groups_history_id
      t.integer :course_of_training_history_id
      t.integer :on_fly_findings_and_suggestions_history_id
      t.integer :project_evaluation_history_id
      t.integer :proposals_for_sales_potential_history_id
      t.integer :merytoryka_history_id
      t.integer :conduct_and_summary_of_game_history_id
      t.integer :notes_on_materials_history_id
      t.integer :notes_on_organization_history_id
      
      
      
      t.references :user
      t.references :project

      t.timestamps           
      
      
    end #change end
    add_index :field_histories, :user_id
    add_index :field_histories, :project_id
  end
end
