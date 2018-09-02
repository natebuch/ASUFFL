class PagesController < ApplicationController

def home
  if params[:team_name]
    session[:team_name] = params[:team_name]
    redirect_to timer_path
  end
end

def timer
      @teams = [{inputName: "the guru", playerName: "The Guru", playerText: "Lil' Bish 1", image: 1},
    {inputName: "dirty landry", playerName: "Dirty Landry", playerText: "Lil' Bish 2", image:2},
    {inputName: "the curse is real", playerName: "THe Curse is Real", playerText: "Lil' Bish 3", image: 3},
    {inputName: "yahoo", playerName: "Yahoo", playerText: "Lil' Bish 4", image: 4},
    {inputName: "butker munchers", playerName: "butkermunchers", playerText: "Lil' Bish 5", image: 5},
    {inputName: "ugg life ii", playerName: "UGG Life II", playerText: "Lil' Bish 6", image: 6},
    {inputName: "ask me about my goat", playerName: "Ask me about my 🐐🤢", playerText: "Lil' Bish 7", image: 7},
    {inputName: "bernmanual sanders", playerName: "Bernmanual Sanders", playerText: "Lil' Bish 8", image: 8},
    {inputName: "juju fruits", playerName: "JuJu Fruits", playerText: "Lil' Bish 9", image: 9},
    {inputName: "rogersville djokovic", playerName: "Rogersville Djokovic", playerText: "Lil' Bish 10", image: 10},
    {inputName: "the gurley gates", playerName: "The Gurley Gates", playerText: "Lil' Bish 11", image: 11}  
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

def landing
    @teams = [{inputName: "the guru", playerName: "The Guru", playerText: "Lil' Bish 1", image: 1},
    {inputName: "dirty landry", playerName: "Dirty Landry", playerText: "Lil' Bish 2", image:2},
    {inputName: "the curse is real", playerName: "THe Curse is Real", playerText: "Lil' Bish 3", image: 3},
    {inputName: "yahoo", playerName: "Yahoo", playerText: "Lil' Bish 4", image: 4},
    {inputName: "butker munchers", playerName: "butkermunchers", playerText: "Lil' Bish 5", image: 5},
    {inputName: "ugg life ii", playerName: "UGG Life II", playerText: "Lil' Bish 6", image: 6},
    {inputName: "ask me about my goat", playerName: "Ask me about my 🐐🤢", playerText: "Lil' Bish 7", image: 7},
    {inputName: "bernmanual sanders", playerName: "Bernmanual Sanders", playerText: "Lil' Bish 8", image: 8},
    {inputName: "juju fruits", playerName: "JuJu Fruits", playerText: "Lil' Bish 9", image: 9},
    {inputName: "rogersville djokovic", playerName: "Rogersville Djokovic", playerText: "Lil' Bish 10", image: 10},
    {inputName: "the gurley gates", playerName: "The Gurley Gates", playerText: "Lil' Bish 11", image: 11}  
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

def haha
      @teams = [{inputName: "the guru", playerName: "The Guru", playerText: "Lil' Bish 1", image: 1},
    {inputName: "dirty landry", playerName: "Dirty Landry", playerText: "Lil' Bish 2", image:2},
    {inputName: "the curse is real", playerName: "THe Curse is Real", playerText: "Lil' Bish 3", image: 3},
    {inputName: "yahoo", playerName: "Yahoo", playerText: "Lil' Bish 4", image: 4},
    {inputName: "butker munchers", playerName: "butkermunchers", playerText: "Lil' Bish 5", image: 5},
    {inputName: "ugg life ii", playerName: "UGG Life II", playerText: "Lil' Bish 6", image: 6},
    {inputName: "ask me about my goat", playerName: "Ask me about my 🐐🤢", playerText: "Lil' Bish 7", image: 7},
    {inputName: "bernmanual sanders", playerName: "Bernmanual Sanders", playerText: "Lil' Bish 8", image: 8},
    {inputName: "juju fruits", playerName: "JuJu Fruits", playerText: "Lil' Bish 9", image: 9},
    {inputName: "rogersville djokovic", playerName: "Rogersville Djokovic", playerText: "Lil' Bish 10", image: 10},
    {inputName: "the gurley gates", playerName: "The Gurley Gates", playerText: "Lil' Bish 11", image: 11}  
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