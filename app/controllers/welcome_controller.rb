# coding: utf-8
class WelcomeController < ApplicationController
  def index
    @title = 'Пътуващото училище на Подарете книга'
    render 'index'
  end

  def lessons
    @title = 'Уроци'
    @files = Dir[Rails.root + 'public/lessons/*'].sort
             .map { |file_name| file_name.split('/').last.split('.').first }
    render 'lessons'
  end
end
