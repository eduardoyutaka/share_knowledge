module Api::V1
	class TeamsController < ApplicationController
		def index
			teams = Team.select(params[:fields]).where(query_string_params)
			render json: teams, status: :ok
		end

		def create
			team = Team.find_or_create_by!(team_params)
			render json: team, status: :ok
		end

		def show
			team = Team.select(params[:fields]).find(params[:id])
			render json: team, status: :ok
		end

		def update
			team = Team.find(params[:id])
			team.update!(team_params)
			render json: team, status: :ok
		end

		def destroy
			team = Team.find(params[:id])
			team.destroy!
			render json: team, status: :ok
		end

		# /projects/teams

		def index_teams_for_project
			project = Project.find(params[:project_id])
			teams = Team.select(params[:fields]).where(query_string_params).where(id: project.team_id)
			render json: teams, status: :ok
		end

		# /students/teams

		def index_teams_for_student
			student = Student.find(params[:student_id])
			teams = student.teams.select(params[:fields]).where(query_string_params)
			render json: teams, status: :ok
		end

		def create_team_for_student
			student = Student.find(params[:student_id])
			team = Team.find_or_create_by!(team_params)
			student.teams << team
			render json: team, status: :ok
		end

		def show_team_for_student
			student = Student.find(params[:student_id])
			team = student.teams.select(params[:fields]).find(params[:team_id])
			render json: team, status: :ok
		end

		def update_team_for_student
			student = Student.find(params[:student_id])
			team = student.teams.find(params[:team_id])
			team.update!(team_params)
			render json: team, status: :ok
		end

		def destroy_team_for_student
			student = Student.find(params[:student_id])
			team = student.teams.find(params[:team_id])
			team.destroy!
			render json: team, status: :ok
		end

		private
			def team_params
				params.require(:team).permit(:name)
			end

			def query_string_params
				params.permit(:name)
			end
	end
end