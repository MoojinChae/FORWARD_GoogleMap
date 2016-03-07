class AirplanesController < ApplicationController
	def index
		t = (((Time.now.to_f * 1000.0).to_i % 100) - 50) * 0.001
		arr = {:flightPositions => [{:flightId => "1", :callsign => "AAE123", :positions => [{:lat => 32.73 + t, :lon => -117.19 - 2*t}]},
																{:flightId => "2", :callsign => "AAE103", :positions => [{:lat => 32.74 - t, :lon => -117.10 + 2*t}]},
																{:flightId => "3", :callsign => "AAE723", :positions => [{:lat => 32.70 + 2*t, :lon => -117.35 + t}]},
																{:flightId => "4", :callsign => "AAE513", :positions => [{:lat => 32.76 - t, :lon => -117.27 - t}]},
																{:flightId => "5", :callsign => "AAC128", :positions => [{:lat => 32.68 + t, :lon => -117.32 + t}]},
																{:flightId => "6", :callsign => "AEQ133", :positions => [{:lat => 32.73 - 2*t, :lon => -117.15 + t}]},
																{:flightId => "7", :callsign => "CAE993", :positions => [{:lat => 32.71 + t, :lon => -117.33 - 2*t}]}
																]}
		respond_to do |format|
			format.json { render :json => arr.to_json }
		end
	end
end
