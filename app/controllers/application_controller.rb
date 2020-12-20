# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def default_create_respond_to(rcrd)
    respond_to do |format|
      if rcrd.save
        format.html { redirect_to rcrd, notice: create_notice(rcrd) }
        format.json { render :show, status: :created, location: rcrd }
      else
        format.html { render :new }
        format.json { render json: rcrd.errors, status: :unprocessable_entity }
      end
    end
  end

  def default_update_respond_to(rcrd)
    respond_to do |format|
      if rcrd.update(event_params)
        format.html { redirect_to rcrd, notice: update_notice(rcrd) }
        format.json { render :show, status: :ok, location: rcrd }
      else
        format.html { render :edit }
        format.json { render json: rcrd.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def create_notice(record)
    "#{record.class.name} was successfully created."
  end

  def update_notice(record)
    "#{record.class.name} was successfully updated."
  end
end
