module Todoro
  class API < Grape::API
    version 'v1', :format => :json

    error_format :json
    rescue_from ActiveRecord::RecordNotFound

    resource :tasks do
      get do
        Task.scoped.select("id, name, done").limit(5)
      end

      get "/:id" do
        Task.scoped.select("id, name, done").find(params[:id])
      end

      post "/:id/done" do
        task = Task.find(params[:id])
        task.done!
      end
    end
  end
end
