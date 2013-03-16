class ProjectsController < ApplicationController
  before_filter :require_login
   Arr=[:name_history_id, :client_history_id,:project_type_history_id,:highrise_history_id,:skydrive_history_id,
        :basecamp_history_id, :participant_count_history_id,:game_history_id,:groups_division_history_id,
        :number_of_rooms_history_id,:date_of_game_history_id,:hour_duration_history_id,
        :localization_history_id,:contacts_client_history_id,:contacts_hotel_history_id,
        :transport_details_history_id,:accomodation_history_id,:target_agreed_with_customer_history_id,
        :other_expectations_history_id,:subject_history_id,:profile_of_participants_history_id,
        :contact_person_on_client_side_history_id,:host_of_the_meeting_history_id,
        :other_information_history_id,:leading_head_coach_history_id,:second_coach_history_id,
        :CPD_trainee_history_id,:assistants_history_id,:agenda_of_meeting_history_id,
        :responsibilities_division_history_id,:after_game_summary_history_id,:invitation_for_participants_history_id,
        :purpose_and_other_expectations_history_id,:participants_short_description_in_groups_history_id,
        :course_of_training_history_id,:on_fly_findings_and_suggestions_history_id,
        :project_evaluation_history_id,:proposals_for_sales_potential_history_id,:merytoryka_history_id,
        :conduct_and_summary_of_game_history_id,:notes_on_materials_history_id,:notes_on_organization_history_id]
    
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show  
    @field_hist_arr=Hash.new 
    @project = Project.find(params[:id])
    @field_histories=FieldHistory.all
       
        FieldHistory.minimum("id").upto(FieldHistory.maximum("id")){|i|  
         @field_hist_arr[i]=FieldHistory.find(i)
          }
       #teraz chcę uzyskać tablice z wszystkimi z id value z field histories
       
       
       
    Arr.each do |fl|
       exec="@project."+fl.to_s#+"==@fh.id"
       #ex: project.name_history_id=@field_history.id_
       fl=fl.to_s.gsub!(fl.to_s[-11,11],"") 
       exec2="@project."+fl.to_s #ex: project.name        
       # exec3="@project."+fl.to_s             
       # @field_hist_arr=FieldHistory.where(:id=>eval(exec))
       
        @field_history1=FieldHistory.where(:id=>1).last
        @field_history2=FieldHistory.where(:id=>2).last  
       
    #  @field_histories.each do |fh|
     #   exec=exec+"==@fh.id"
      #  if eval(exec)
       #    @field_hist_arr<<fh.value
          
        #end
     # end       
    end      
       
    respond_to do |format|
      format.html    # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
    
    Arr.each do |fl|
      exec2="@project."+fl.to_s+"_will_change!"   
      eval(exec2)  
    end    
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])
    params[:project][:game_ids] ||= []

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    # exec=String.new      
    # exec2=String.new
     
    #Arr.each do |fl|
      #trzeba jeszcze ustawić field_history.project_id
      
      #exec="@project."+fl.to_s+"=@field_history.id"
       #ex: project.name_history_id=@field_history.id_
      #fl=fl.to_s.gsub!(fl.to_s[-11,11],"") 
      #exec2="@project."+fl.to_s #ex: project.name  
       
       #exec3="@project."+fl.to_s+"_changed?"     
        #   @project.name_changed?
           #puts @val_before 
           
           # if (eval(exec3))
              # @field_history=FieldHistory.new
              # @field_history.project_id=@project.id
              # @field_history.value=eval(exec2)#project.pole
              # @field_history.save              
          # end
      #&&@field_history.value!=eval(exec2)
     # if(@field_history.value!="") 
    #    @field_history.save
     # end
     # eval(exec)
      #project.name_history_id=@field_history.id    
   # end
    params[:project][:game_ids] ||= []

    old_project = Project.find(params[:id])
    id=old_project.id
    params[:project][:game_ids] ||= []
    respond_to do |format|
      if @project.update_attributes(params[:project])
        remember_changes params[:project], old_project, id
        format.html { redirect_to projects_url, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def remember_changes(new_array ,old_project,project_id)
    new_array.each do |key,new_value|
      next if key == "game_ids"
      if new_value != old_project[key]
       # raise "#{key}"
          @field_history = FieldHistory.new
          @field_history.value = old_project[key]          
          @field_history.save
          project_instance=Project.find_by_id(project_id)
          string=String.new          
          string="project_instance."+"#{key}"+"_history_id=@field_history.id"
          eval(string)
          project_instance.save
      end
    end
    
    #chcemy przejść tylko po kluczach obcych w tabeli projects
    # i uaktualnić tylko te klucze obce
    # które dla których zmieniła się wartość pola
    # Arr.each do |fl|
          # old_project[fl]=@field_history.id
          # end
    
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
