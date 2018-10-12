# frozen_string_literal: true

class DrinksController < ApplicationController
  def new
    @page_title = 'Add Drink'
    @drink = Drink.new
    @category = Category.new
    @ingredient = Ingredient.new
    @ingredients = Ingredient.all
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      @drink.ingredients << Ingredient.where(id: params[:id])

      flash[:notice] = 'Drink Created'

      redirect_to drinks_path
    else
      render 'new'
    end
  end

  def update
    @drink = Drink.find(params[:id])

    @book.update(book_params)

    flash[:notice] = 'Drink Updated'

    redirect_to drinks_path
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def destroy
    @drink = Drink.find(params[:id])

    @book.destroy

    flash[:notice] = 'Drink Removed'

    redirect_to drinks_path
  end

  def index
    @drinks = Drink.all
    @categories = Category.all
  end

  def show
    @drink = Drink.find(params[:id])
    @categories = Category.all
    @ingredients = Ingredient.all
  end

  private

  def drink_params
    params.require(:drink).permit!
  end

  def ingredient_params
    params.require(:ingredient).permit(:id, :name)
  end
end
