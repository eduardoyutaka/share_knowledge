module Api::V1
	class StudentsController < ApplicationController
		def index
			students = Student.select(params[:fields]).where(query_string_params)
			render json: students, status: :ok
		end

		def create
			puts student_params
			student = Student.find_or_create_by!(student_params)
			render json: student, status: :ok
		end

		def show
			student = Student.select(params[:fields]).find(params[:id])
			render json: student, status: :ok
		end

		def update
			student = Student.find(params[:id])
			student.update!(student_params)
			render json: student, status: :ok
		end

		def destroy
			student = Student.find(params[:id])
			student.destroy!
			render json: student, status: :ok
		end

		# /projects/students

		def index_students_for_project
			project = Project.find(params[:project_id])
			team = Team.find(project.team_id)
			render json: team.students.select(params[:fields]).where(query_string_params), status: :ok
		end

		# /teams/students

		def index_students_for_team
			team = Team.find(params[:team_id])
			render json: team.students.select(params[:fields]).where(query_string_params), status: :ok
		end

		def create_student_for_team
			team = Team.find(params[:team_id])
			student = Student.find_or_create_by!(student_params)
			team.students << student
			render json: student, status: :ok
		end

		def show_student_for_team
			team = Team.find(params[:team_id])
			student = team.students.select(params[:fields]).find(params[:student_id])
			render json: student, status: :ok
		end

		def update_student_for_team
			team = Team.find(params[:team_id])
			student = team.students.find(params[:student_id])
			student.update!(student_params)
			render json: student, status: :ok
		end

		def destroy_student_for_team
			team = Team.find(params[:team_id])
			student = team.students.find(params[:student_id])
			student.destroy!
			render json: student, status: :ok
		end

		private
			def student_params
				params.require(:student).permit(:cohort, :email, :first_name, :last_name, :profile)
			end

			def query_string_params
				params.permit(:cohort, :email, :first_name, :last_name, :profile)
			end
	end
end