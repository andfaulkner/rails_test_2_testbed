module API
	module V1
		class Bears < Grape::API
			include API::V1::Defaults

			desc "Always return the same thing - a secret bear"
			get :secret_bear do
				"You found the secret bear!"
			end

			resource :bears do
				desc "Return all bears"
				get "", root: :bears do
					Bear.all
				end

				desc "Return just one bear, based on ID"
				params do
					requires :id, type: Integer, desc: "id of the type of bear"
				end
				get "id/:id", root: :bear do # root is just the root node in the json object, that's all
					Bear.where(id: permitted_params[:id]).first # put a ! at the end, and errors if none exists
				end

			end
		end
	end
end

# module API

# 	class Bears < Grape::API
# 		version 'v1'
# 		format :json

# 		# helpers do
# 		# 	def current_user
# 		# 		@current_user ||= User.authorize!(env)
# 		# 	end
# 		# end
# 		# def authenticate!
# 		# 	error!('401 Unauthorized', 401) unless current_user
# 		# end

# 		resource :bears do
# 			desc "Return list of bears"
# 			get do
# 				Bear.all
# 			end
# 		end
# 	end
# end