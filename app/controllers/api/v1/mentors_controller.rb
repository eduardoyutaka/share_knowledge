module Api::V1
	class MentorsController < ApplicationController
		def index
			mentors = Mentor.where(query_string_params).select(params[:fields])
			render json: mentors, status: :ok
		end

		def new

		end

		def create
			mentor = Mentor.find_or_create_by!(mentor_params)
			render json: mentor, status: :ok
		end

		def show
			mentor = Mentor.select(params[:fields]).find(params[:id])
			render json: mentor, status: :ok
		end

		def edit

		end

		def update
			mentor = Mentor.find(params[:id])
			mentor.update!(mentor_params)
			render json: mentor, status: :ok
		end

		def destroy
			mentor = Mentor.find(params[:id])
			mentor.destroy!
			render json: mentor, status: :ok
		end

		private
			def mentor_params
				params.require(:mentor).permit(:email, :field, :first_name, :last_name)
			end

			def query_string_params
				params.permit(:email, :field, :first_name, :last_name)
			end
	end
end
