class BusesController < ApplicationController
	def index
		respond_to do |format|
			format.json { render :json => {:num => '201', :lat => '503', :alt => '202' }.to_json }
		end
	end
end
