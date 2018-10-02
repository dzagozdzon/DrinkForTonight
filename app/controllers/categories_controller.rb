# frozen_string_literal: true

class CategoriesController < ApplicationController
  def new
    @page_title = "Add New Primary Alcohol"
    @category = Category.new
  end

  def create; end

  def update; end

  def edit; end

  def destroy; end

  def index; end

  def show; end
end
