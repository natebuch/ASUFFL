class PagesController < ApplicationController

def home
  if params[:team_name]
    session[:team] = nil
    session[:team_name] = params[:team_name]
    redirect_to landing_path
  end
end

def timer
end

  def landing
      @teams = [{input_name: "the guru", player_name: "The Guru", player_text: "Snitchin", image: "https://sandbox365.files.wordpress.com/2010/01/stop-snitching-psa-1b.jpg"},
      {input_name: "dirty landry", player_name: "Dirty Landry", player_text: "Master of the Sleeping Pick", image: "https://secure.i.telegraph.co.uk/multimedia/archive/01205/sleep-computer-460_1205647c.jpg"},
      {input_name: "the curse is real", player_name: "The Curse is Real", player_text: "RB1 RB2 RB3 RB4 WR(RB5)", image: "https://i.ytimg.com/vi/v9wH2A0SQbs/maxresdefault.jpg"},
      {input_name: "yahoo", player_name: "Yahoo", player_text: "Palm Tan fanboy", image: "https://i.imgur.com/GkEhLzl.png"},
      {input_name: "butker munchers", player_name: "butkermunchers", player_text: "Was the mom's name Chelsea?", image: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/209px-Chelsea_FC.svg.png"},
      {input_name: "ugg life ii", player_name: "UGG Life II", player_text: "Brady is a 6, maybe a 6.5", image: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/1/16/enhanced/webdr10/original-14441-1422826824-11.jpg"},
      {input_name: "ask me about my goat", player_name: "Ask me about my 🐐🤢", player_text: "2018 is not year of the GOAT", image: 'http://www.goatfarm.co.in/attachments/Image/Believe-it-or-not.jpg'},
      {input_name: "bernmanual sanders", player_name: "Bernmanual Sanders", player_text: "Friends dont let friends butt luge", image: "https://i.kinja-img.com/gawker-media/image/upload/s--y42H4i-R--/c_fill,fl_progressive,g_center,h_480,q_80,w_640/gulvnt50acjzvtjpgywv.jpg"},
      {input_name: "juju fruits", player_name: "JuJu Fruits", player_text: "Got nuthin", image: "https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/25/3e/5d/253e5de1-1411-c919-410a-c3628a666a5b/mzl.rehriusj.png/246x0w.jpg"},
      {input_name: "rogersville djokovic", player_name: "Rogersville Djokovic", player_text: "And when they wanted to draft, the mother of Jesus saith unto him, They have no iPAD.", image: "http://studio3.com/wp-content/uploads/2015/05/mary-holding-baby-ipad-digital-art-410x495.jpg"},
      {input_name: "the gurley gates", player_name: "The Gurley Gates", player_text: "$40 tops", image: "http://www.hotel-r.net/im/hotel/cy/dream-palace-2.jpg"},
      {input_name: "nizzfoshizz", player_name: "NizzFoShizZ", player_text: "THE NEW GUY", image: "http://fistfuloftalent.com/wp-content/uploads/2009/05/the-new-guy-original.jpg"}
      ]

    @teams.each do |team|
      if team[:input_name] == session[:team_name].downcase
        session[:team] = team
      end
    end
    
    if session[:team].nil?
      redirect_to oops_path
    end
  end

  def hof
  end

  def teams
    @teams = [{input_name: "the guru", player_name: "The Guru", player_text: "Snitchin", image: "https://sandbox365.files.wordpress.com/2010/01/stop-snitching-psa-1b.jpg"},
    {input_name: "dirty landry", player_name: "Dirty Landry", player_text: "Master of the Sleeper Pick", image: "https://secure.i.telegraph.co.uk/multimedia/archive/01205/sleep-computer-460_1205647c.jpg"},
    {input_name: "the curse is real", player_name: "The Curse is Real", player_text: "RB1 RB2 RB3 RB4 RB5 RB6 RB7 RB8", image: "https://i.ytimg.com/vi/v9wH2A0SQbs/maxresdefault.jpg"},
    {input_name: "yahoo", player_name: "Yahoo", player_text: "Palm Tan fanboy", image: "https://i.imgur.com/GkEhLzl.png"},
    {input_name: "butker munchers", player_name: "butkermunchers", player_text: "Was the Mom's name Chelsea?", image: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/209px-Chelsea_FC.svg.png"},
    {input_name: "ugg life ii", player_name: "UGG Life II", player_text: "Brady is a 6, maybe a 6.5", image: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/1/16/enhanced/webdr10/original-14441-1422826824-11.jpg"},
    {input_name: "ask me about my goat", player_name: "Ask me about my GOAT", player_text: "Now Steaming on SDIFFL ...", image: "https://static.vibe.com/files/2016/11/unnamed-1479749976-640x480.jpg"},
    {input_name: "bernmanual sanders", player_name: "Bernmanual Sanders", player_text: "Friends dont let friends butt luge", image: "https://i.kinja-img.com/gawker-media/image/upload/s--y42H4i-R--/c_fill,fl_progressive,g_center,h_480,q_80,w_640/gulvnt50acjzvtjpgywv.jpg"},
    {input_name: "juju fruits", player_name: "JuJu Fruits", player_text: "JuJu in .... LuLu", image: "https://i.ytimg.com/vi/3tW0m1xd5qg/maxresdefault.jpg"},
    {input_name: "rogersville djokovic", player_name: "Rogersville Djokovic", player_text: "And when he wanted to draft, Mary saidith unto him, no iPAD for you.", image: "https://i.imgur.com/EjrHvLU.jpg"},
    {input_name: "the gurley gates", player_name: "The Gurley Gates", player_text: "$40 tops", image: "http://www.hotel-r.net/im/hotel/cy/dream-palace-2.jpg"},
    {input_name: "nizzfoshizz", player_name: "NizzFoShizZ", player_text: "THE NEW GUY", image: "http://fistfuloftalent.com/wp-content/uploads/2009/05/the-new-guy-original.jpg"}
    ]
  end


  def search_team
  end

  def oops
  end

  def credits
    @credits = ["http://flurrysports.org/wp-content/uploads/2018/06/NFL-Stars.jpg", 
      "https://ci.memecdn.com/7377432.jpg", 
      "http://git.wimbarelds.nl/TimeCircles", 
      "https://thumbs.gfycat.com/InfamousVariableButterfly-size_restricted.gif",
      "https://sandbox365.files.wordpress.com/2010/01/stop-snitching-psa-1b.jpg",
      "https://secure.i.telegraph.co.uk/multimedia/archive/01205/sleep-computer-460_1205647c.jpg",
      "https://i.ytimg.com/vi/v9wH2A0SQbs/maxresdefault.jpg",
      "https://i.imgur.com/GkEhLzl.png",
      "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/209px-Chelsea_FC.svg.png",
      "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/1/16/enhanced/webdr10/original-14441-1422826824-11.jpg",
      "https://static.vibe.com/files/2016/11/unnamed-1479749976-640x480.jpg",
      "https://i.kinja-img.com/gawker-media/image/upload/s--y42H4i-R--/c_fill,fl_progressive,g_center,h_480,q_80,w_640/gulvnt50acjzvtjpgywv.jpg",
      "https://i.ytimg.com/vi/3tW0m1xd5qg/maxresdefault.jpg",
      "http://studio3.com/wp-content/uploads/2015/05/mary-holding-baby-ipad-digital-art-410x495.jpg",
      "http://www.hotel-r.net/im/hotel/cy/dream-palace-2.jpg",
      "http://fistfuloftalent.com/wp-content/uploads/2009/05/the-new-guy-original.jpg"]
  end

end