class LanguagesController < ApplicationController
  before_action :set_language, only: [:edit, :update, :destroy, :show]
  def index
    @languages = Language.desc_order
    @language = Language.new
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      flash[:success] = "Language created successfully"
    else
      flash[:error] = @language.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @language.update(language_params)
      flash[:success] = "Updated successfully"
    else
      flash[:error] = @language.errors.full_messages
    end
  end

  def destroy
    if @language.destroy
      flash[:success] = "Updated successfully"
    else
      flash[:error] = @language.errors.full_messages
    end
  end

  def show
  end

  def set_language
    @language = Language.find(params[:id])
  end

  private

  def language_params
    params.require(:language).permit(:name)
  end
end
