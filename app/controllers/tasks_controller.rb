require '../app/workers/tasks_worker'

class TasksController < ApplicationController

  def new
    @id = params['id'] || DateTime.now.to_s
    TasksWorker.perform_async(@id)
    render 'new'
  end

end
