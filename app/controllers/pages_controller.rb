class PagesController < ApplicationController

	def home
	end

	def landing
		@teams = [{playerName: "Guru", playerText: "Lil' Bish"},
       {playerName: "Guru1", playerText: "Lil' Bish 1"},
       {playerName: "Guru2", playerText: "Lil' Bish 2"},
       {playerName: "Guru", playerText: "Lil' Bish 3"},
       {playerName: "Guru", playerText: "Lil' Bish 4"},
       {playerName: "Guru", playerText: "Lil' Bish 5"},
       {playerName: "Guru", playerText: "Lil' Bish 6"},
       {playerName: "Guru", playerText: "Lil' Bish 7"},
       {playerName: "Guru", playerText: "Lil' Bish 8"},
       {playerName: "Guru", playerText: "Lil' Bish 9"},
       {playerName: "Guru", playerText: "Lil' Bish 10"},
       {playerName: "Guru", playerText: "Lil' Bish 11"}  
		]
   
    
    @bleh = @teams.select {|x| x[:playerName].downcase == session[:team_name].downcase}

    if @bleh == []
    	redirect_to oops_path
    else
    	@checkName = session[:team_name]
    end

	end

	def search_team
		session[:team_name] = params[:team_name]	
		redirect_to landing_path
	end

	def oops
  end

end