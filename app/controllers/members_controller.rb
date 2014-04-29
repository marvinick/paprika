class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to member_path(@member)
    end
  end

  def show
    @members = Member.all
    @member = Member.find(params[:id])
  end


  private

  def member_params
    params.require(:member).permit(:name, :email, :job_title, :password_digest)
  end

end