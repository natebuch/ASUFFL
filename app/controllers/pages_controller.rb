class PagesController < ApplicationController

def home
  if params[:team_name]
    session[:team_name] = params[:team_name]
    redirect_to landing_path
  end
end

def landing
    @teams = [{inputName: "guru", playerName: "Guru1", playerText: "Lil' Bish 1"},
    {inputName: "guru", playerName: "Guru2", playerText: "Lil' Bish 2"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 3"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 4"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 5"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 6"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 7"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 8"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 9"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 10"},
    {inputName: "guru", playerName: "Guru", playerText: "Lil' Bish 11"}  
    ]

  @teams.each do |team|
    if team[:inputName] == session[:team_name].downcase
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