class Api::V1::TasksController < ApplicationController

  before_action :find_task, only: [:update, :destroy]
  def index
    @tasks = Task.all
    render json: @tasks
  end
  def create
    @task = Task.create(patient_id: params[:patient_id], counselor_id: params[:counselor_id], task: params[:task], complete: params[:complete])
    render json: @task, status: :accepted
  end
  def update
    @task.update(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessible_entity
    end
  end
  def destroy
    @task.destroy
    render json: { message: “removed” }, status: :ok
  end
  private

  def task_params
    params.require(:task).permit(:counselor_id, :patient_id, :task, :complete)
  end

  def find_task
    @task = Task.find(params[:id])
  end

end
