class AddNameHistoryIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :name_history_id, :integer
     add_column :projects, :client_history_id, :integer
      add_column :projects, :project_type_history_id, :integer
      add_column :projects, :highrise_history_id, :integer
      add_column :projects, :skydrive_history_id, :integer
       add_column :projects, :basecamp_history_id, :integer
       add_column :projects, :participant_count_history_id, :integer
      add_column :projects, :game_history_id, :integer
       add_column :projects, :groups_division_history_id, :integer
       add_column :projects, :number_of_rooms_history_id, :integer
     add_column :projects, :date_of_game_history_id, :integer
      add_column :projects, :hour_duration_history_id, :integer
       add_column :projects, :localization_history_id, :integer
      add_column :projects, :contacts_client_history_id, :integer
       add_column :projects, :contacts_hotel_history_id, :integer
       add_column :projects, :transport_details_history_id, :integer
       add_column :projects, :accomodation_history_id, :integer
       add_column :projects, :target_agreed_with_customer_history_id, :integer
       add_column :projects, :other_expectations_history_id, :integer
       add_column :projects, :subject_history_id, :integer
       add_column :projects, :profile_of_participants_history_id, :integer
       add_column :projects, :contact_person_on_client_side_history_id, :integer
       add_column :projects, :host_of_the_meeting_history_id, :integer
       add_column :projects, :other_information_history_id, :integer
       add_column :projects, :leading_head_coach_history_id, :integer
       add_column :projects, :second_coach_history_id, :integer
      add_column :projects, :CPD_trainee_history_id, :integer
       add_column :projects,:assistants_history_id, :integer
       add_column :projects, :agenda_of_meeting_history_id, :integer
       add_column :projects, :responsibilities_division_history_id, :integer
       add_column :projects, :after_game_summary_history_id, :integer
       add_column :projects, :invitation_for_participants_history_id, :integer
       add_column :projects, :purpose_and_other_expectations_history_id, :integer
       add_column :projects, :participants_short_description_in_groups_history_id, :integer
       add_column :projects, :course_of_training_history_id, :integer
       add_column :projects, :on_fly_findings_and_suggestions_history_id, :integer
       add_column :projects, :project_evaluation_history_id, :integer
       add_column :projects, :proposals_for_sales_potential_history_id, :integer
       add_column :projects, :merytoryka_history_id, :integer
       add_column :projects, :conduct_and_summary_of_game_history_id, :integer
      add_column :projects, :notes_on_materials_history_id, :integer
       add_column :projects, :notes_on_organization_history_id, :integer
       
       reversible do |dir|
      dir.up do
        #add a foreign key
        execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_name_field_history
            FOREIGN KEY (name_history_id)
            REFERENCES field_histories(name_history_id)
        SQL
        
        execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_client_field_history
            FOREIGN KEY (client_history_id)
            REFERENCES field_histories(client_history_id)
        SQL
        
        execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_project_type_field_history
            FOREIGN KEY (project_type_history_id)
            REFERENCES field_histories(project_type_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_highrise_field_history
            FOREIGN KEY (highrise_history_id)
            REFERENCES field_histories(highrise_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_skydrive_field_history
            FOREIGN KEY (skydrive_history_id)
            REFERENCES field_histories(skydrive_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_basecamp_field_history
            FOREIGN KEY (basecamp_history_id)
            REFERENCES field_histories(basecamp_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_participant_count_field_history
            FOREIGN KEY (participant_count_history_id)
            REFERENCES field_histories(participant_count_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_game_field_history
            FOREIGN KEY (game_history_id)
            REFERENCES field_histories(game_history_id)
        SQL
        
        execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_groups_division_field_history
            FOREIGN KEY (groups_division_history_id)
            REFERENCES field_histories(groups_division_history_id)
        SQL
        
        execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_target_agreed_with_customer_field_history
            FOREIGN KEY (target_agreed_with_customer_history_id)
            REFERENCES field_histories(target_agreed_with_customer_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_date_of_game_field_history
            FOREIGN KEY (date_of_game_history_id)
            REFERENCES field_histories(date_of_game_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_hour_duration_field_history
            FOREIGN KEY (hour_duration_history_id)
            REFERENCES field_histories(hour_duration_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_localization_field_history
            FOREIGN KEY (localization_history_id)
            REFERENCES field_histories(localization_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_contacts_client_field_history
            FOREIGN KEY (contacts_client_history_id)
            REFERENCES field_histories(contacts_client_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_contacts_hotel_field_history
            FOREIGN KEY (contacts_hotel_history_id)
            REFERENCES field_histories(contacts_hotel_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_transport_details_field_history
            FOREIGN KEY (transport_details_history_id)
            REFERENCES field_histories(transport_details_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_accomodation_field_history
            FOREIGN KEY (accomodation_history_id)
            REFERENCES field_histories(accomodation_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_other_expectations_field_history
            FOREIGN KEY (other_expectations_history_id)
            REFERENCES field_histories(other_expectations_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_subject_field_history
            FOREIGN KEY (subject_history_id)
            REFERENCES field_histories(subject_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_profile_of_participants_field_history
            FOREIGN KEY (profile_of_participants_history_id)
            REFERENCES field_histories(profile_of_participants_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_contact_person_on_client_field_history
            FOREIGN KEY (contact_person_on_client_history_id)
            REFERENCES field_histories(contact_person_on_client_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_host_of_the_meeting_field_history
            FOREIGN KEY (host_of_the_meeting_history_id)
            REFERENCES field_histories(host_of_the_meeting_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_other_information_field_history
            FOREIGN KEY (other_information_history_id)
            REFERENCES field_histories(other_information_history_id)
        SQL
        
         execute <<-SQL
          ALTER TABLE projects
            ADD CONSTRAINT fk_leading_head_coach_field_history
            FOREIGN KEY (leading_head_coach_history_id)
            REFERENCES field_histories(leading_head_coach_history_id)
        SQL
      end
      dir.down do
        execute <<-SQL
          ALTER TABLE projects
            DROP FOREIGN KEY fk_name_field_history
        SQL
      end
    end
       
end
end