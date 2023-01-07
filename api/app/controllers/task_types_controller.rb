class TaskTypesController < ApplicationController
  before_action :set_task_type, only: %i[show edit update destroy]
  def index
    @q = TaskType.all.ransack(params[:q])
    @task_types = @q.result(distinct: true).page(params[:page])  # ソート
    render json: @task_types
  end

  def show; end

  def new
    @task_type = TaskType.new
    render json: @task_type
  end

  def edit; end

  def create
    @task_type = TaskType.new(task_type_params)
    if params[:back].present?
      render :new
      return
    end
    if @task_type.save
      true
    else
      render :new
    end
  end

  def update
    if @task_type.update(task_type_params)
      true
    else
      render :edit
    end
  end

  def destroy
    @task_type = TaskType.find(params[:id])
    @task_type.destroy
    true
  end

  private

  def task_type_params
    params.require(:task_type).permit(:name)
  end

  def set_task_type
    @task_type = TaskType.find(params[:id])
  end
end
