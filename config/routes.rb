Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :mentors, :projects, :students, :teams
    end
  end

  version = 'api/v1/'

  scope 'api/v1' do
    get     'students/:student_id/projects',                   to: version+'projects#index_projects_for_student'

    get     'teams/:team_id/projects',                         to: version+'projects#index_projects_for_team'
    post    'teams/:team_id/projects',                         to: version+'projects#create_project_for_team'
    get     'teams/:team_id/projects/:project_id',             to: version+'projects#show_project_for_team'
    put     'teams/:team_id/projects/:project_id',             to: version+'projects#update_project_for_team'
    delete  'teams/:team_id/projects/:project_id',             to: version+'projects#destroy_project_for_team'

    get     'projects/:project_id/students',                   to: version+'students#index_students_for_project'

    get     'teams/:team_id/students',                         to: version+'students#index_students_for_team'
    post    'teams/:team_id/students',                         to: version+'students#create_student_for_team'
    get     'teams/:team_id/students/:student_id',             to: version+'students#show_student_for_team'
    put     'teams/:team_id/students/:student_id',             to: version+'students#update_student_for_team'
    delete  'teams/:team_id/students/:student_id',             to: version+'students#destroy_student_for_team'

    get     'projects/:project_id/teams',                      to: version+'teams#index_teams_for_project'

    get     'students/:student_id/teams',                      to: version+'teams#index_teams_for_student'
    post    'students/:student_id/teams',                      to: version+'teams#create_team_for_student'
    get     'students/:student_id/teams/:team_id',             to: version+'teams#show_team_for_student'
    put     'students/:student_id/teams/:team_id',             to: version+'teams#update_team_for_student'
    delete  'students/:student_id/teams/:team_id',             to: version+'teams#destroy_team_for_student'
  end
end