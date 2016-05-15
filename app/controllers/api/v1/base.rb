module API
	module V1
		class Base < Grape::API
			mount API::V1::Bears
			mount API::V1::Experiments
		end
	end
end