# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale
  private
  def set_locale
    I18n.locale = :'zh-TW' || I18n.default_locale
  end

  
end
