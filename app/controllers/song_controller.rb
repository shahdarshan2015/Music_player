class SongController < ApplicationController
	 def index
	 	#binding.pry
	  		@songs = Song.all
	  end
	  def play

		  	@list = List.create(member_id: current_member.id, song_id: params[:foo])
		  		#binding.pry
				
			if @list.valid?
				@time = Timetable.new
		    	@time.playtime = Time.now.in_time_zone("Eastern Time (US & Canada)")
				@time.list = @list
				@time.save


		  	end
	  end
end
