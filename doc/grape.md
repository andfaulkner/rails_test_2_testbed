four strategies in which clients can reach your API's endpoints
===============================================================
:path												-- default
:header
:accept_version_header
:param

path
----
		version 'v1', using: :path
-   this provides an endpoint at 		/v1/statuses/public_timeline

param
-----
		version 'v1', using: :param
-   endpoint:												/statuses/public_timeline?apiver=v1

    version 'v1', using: :param, parameter: 'v'
-   endpoint:												/statuses/public_timeline?v=v1

description
-----------

desc 'Returns your public timeline.' do 							# basic description of api section
  detail 'more details'																# more advanced description
  params  API::Entities::Status.documentation 				# @params equivalent from JS
  success API::Entities::Entity 											# ????
  failure [[401, 'Unauthorized', 'Entities::Error']]  # def of used failure HTTP Codes, Entities
  named 'My named route'															# helper to give root name & find w/ this name in documentation hash
  headers XAuthToken: { 															# def of the used headers
            description: 'Valdates your identity',
            required: true
          },
          XOptionalHeader: {
            description: 'Not really needed',
            required: false
          }

end
get :public_timeline do
  Status.limit(20)
end


requests
========
get :secret_bear do
	# available at .../secret_bear
end

post :secret_bear do
  # same, but post request only
end


Parameters
==========
*   available through the params hash object

post '/statuses' do
  Status.create!(text: params[:text])
end
