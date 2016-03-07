class AirplanesController < ApplicationController
	def index
		t = (((Time.now.to_f * 1000.0).to_i % 100) - 50) * 0.001
		arr = {:items => [{:id => "1", :latitude => 32.73 + t, :longitude => -117.19 - 2*t}, 
											{:id => "2", :latitude => 32.74 - t, :longitude => -117.10 + 2*t},
											{:id => "3", :latitude => 32.70 + 2*t, :longitude => -117.35 + t},
											{:id => "4", :latitude => 32.76 - t, :longitude => -117.27 - t},
											{:id => "5", :latitude => 32.68 + t, :longitude => -117.32 + t},
											{:id => "6", :latitude => 32.73 - 2*t, :longitude => -117.15 + t},
											{:id => "7", :latitude => 32.71 + t, :longitude => -117.33 - 2*t}
										 ]}
		respond_to do |format|
			format.json { render :json => arr.to_json }
		end
	end
end
