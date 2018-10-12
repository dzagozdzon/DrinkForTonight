# frozen_string_literal: true

class CategoriesController < ApplicationController
  def new
    @page_title = 'Add New Primary Alcohol'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category Created'

      redirect_to categories_path
    else
      render 'new'
    end
  end

  def update; end

  def edit; end

  def destroy; end

  def index; end

  def show; end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
