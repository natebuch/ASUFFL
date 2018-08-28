class PagesController < ApplicationController

def home
  if params[:team_name]
    session[:team_name] = params[:team_name]
    redirect_to landing_path
  end
end

def landing
    @teams = [{playerName: "guru", playerText: "Lil' Bish"},
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

  @teams.each do |team|
    if team[:playerName] == session[:team_name].downcase
      @team = team
    end
  end

  if @team.nil?
    redirect_to oops_path
  end
end

  def search_team
  
  end

  def oops
  end

end