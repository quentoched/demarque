Rails.application.routes.draw do

	namespace :api, defaults: {format: "json"} do
		namespace :v1 do
			scope "isbn" do
				match "/:code/validate" => "isbn#validate", :via => :get
			end
		end
	end

end
