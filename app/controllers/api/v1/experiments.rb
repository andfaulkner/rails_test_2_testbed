module API
	module V1
		class Experiments < Grape::API
			include API::V1::Defaults

			desc "echos back any parameters given"
			get :try_params do
				params
			end

		end
	end
end