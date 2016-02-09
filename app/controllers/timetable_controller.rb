class TimetableController < ApplicationController
  def index
  	@tests = List.joins(:timetable).where(:member_id => current_member.id).group(:song_id).count
    @tests1 = List.joins(:timetable).where(:member_id => current_member.id).group(:song_id)
  	#binding.pry
  end
end
