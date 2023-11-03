class ViewsController < ApplicationController
  before_action :set_link, only: :show

  rescue_from ActiveRecord::RecordNotFound do
    redirect_to root_path, notice: "Missing Link !"
  end

  def show
    @link.views.create(ip: request.ip, user_agent: request.user_agent)
    redirect_to @link.url, allow_other_host: true
  end
end
