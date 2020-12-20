# frozen_string_literal: true

class SourcesController < ApplicationController
  before_action :set_source, only: %i[show edit update destroy]

  def index
    @sources = Source.all
  end

  def show; end

  def new
    @source = Source.new
  end

  def edit; end

  def create
    @source = Source.new(source_params)

    default_create_respond_to(@source)
  end

  def update
    default_update_respond_to(@source)
  end

  def destroy
    @source.destroy
    respond_to do |format|
      format.html do
        redirect_to sources_url, notice: "Source was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  def set_source
    @source = Source.find(params[:id])
  end

  def source_params
    params.require(:source).permit(:name)
  end
end
