module Api::V1
	class ProjectsController < ApplicationController
		def index
			projects = Project.select(params[:fields]).where(query_string_params)
			render json: projects, status: :ok
		end

		def create
			project = Project.find_or_create_by!(project_params)
			render json: project, status: :ok
		end

		def show
			project = Project.select(params[:fields]).find(params[:id])
			render json: project, status: :ok
		end

		def update
			project = Project.find(params[:id])
			project.update!(project_params)
			render json: project, status: :ok
		end

		def destroy
			project = Project.find(params[:id])
			project.destroy!
			render json: project, status: :ok
		end

		# /students/projects

		def index_projects_for_student
			projects = []
			student = Student.find(params[:student_id])
			student.teams.each do |team|
				team.projects.select(params[:fields]).where(query_string_params).each do |project|
					projects.push(project)
				end
			end
			render json: projects, status: :ok
		end

		# /teams/projects

		def index_projects_for_team
			team = Team.find(params[:team_id])
			render json: team.projects.select(params[:fields]).where(query_string_params), status: :ok
		end

		def create_project_for_team
			team = Team.find(params[:team_id])
			project = Project.find_or_create_by!(project_params)
			team.projects << project
			render json: project, status: :ok
		end

		def show_project_for_team
			team = Team.find(params[:team_id])
			project = team.projects.select(params[:fields]).find(params[:project_id])
			render json: project, status: :ok
		end

		def update_project_for_team
			team = Team.find(params[:team_id])
			project = team.projects.find(params[:project_id])
			project.update!(project_params)
			render json: project, status: :ok
		end

		def destroy_project_for_team
			team = Team.find(params[:team_id])
			project = team.projects.find(params[:project_id])
			project.destroy!
			render json: project, status: :ok
		end
		
		private
			def project_params
				params.require(:project).permit(:big_idea, :description, :name, :team_id)
			end

			def query_string_params
				params.permit(:big_idea, :description, :name, :team_id)
			end
	end
end