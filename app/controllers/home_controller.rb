class HomeController < ApplicationController
  def index
    @menu = Navigator.find(1)
    @home_active = Homepage.find(1)
    @home = Homepage.where.not(:id => 1)
    @sec = Section.all
    @aboutwe_active = Aboutwe.find(2)
    @aboutwe = Aboutwe.where(:id => 2..4)
    @language = Aboutwe.where(:id => 5..8)
    @services = Service.all
    
    # 나중에 반복 없애자
    @ourteams1 = Ourteam.where(:id => 1..4)
    @ourteams2 = Ourteam.where(:id => 5..8)
    @ourteams3 = Ourteam.where(:id => 9..12)
    @contacts = Contact.where(:id => 2..4)
  end
end
