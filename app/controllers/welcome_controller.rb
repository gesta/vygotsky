# coding: utf-8
class WelcomeController < ApplicationController
  def index
    @title = 'Пътуващото училище на Подарете книга'
    render 'index'
  end
end
