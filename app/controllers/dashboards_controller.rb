class DashboardsController < ApplicationController
  before_action :authenticate_user!

  around_action :load_from_shard

  def index
    @projects = Project.all
  end

  def switch
    current_user.update(company_id: params[:id])

    redirect_to dashboards_path
  end

  private

  def load_from_shard
    TenantRecord.connected_to(role: :reading, shard: shard_name) do
      yield
    end
  end

  def shard_name
    current_user.company_db_shard_name.to_sym
  end
end