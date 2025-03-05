# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    render json: BookSerializer.new(
      Book.all.page(params[:page]).per(Settings.app.items_per_page)
    ).serialize
  end
end
