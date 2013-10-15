class SkillsController < ApplicationController

  def new
    @skill = Skill.new
  end

  def index
    @skills = Skill.all(:limit => 10)
  end

  def create
    @skill = Skill.new
    @skill.name = params[:name]
    @skill.description = params[:description]
    @skill.save
  end

  def show
    @skill = Skill.find(params[:id])
  end

end
