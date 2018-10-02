# frozen_string_literal: true

class DrinksController < ApplicationController
  def new
    @page_title = 'Add Drink'
    @drink = Drink.new
    @category = Category.new
    @ingredient = Ingredient.new
  end

  def create; end

  def update; end

  def edit; end

  def destroy; end

  def index; end

  def show; end
end
