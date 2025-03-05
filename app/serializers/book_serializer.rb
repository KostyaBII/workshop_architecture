# frozen_string_literal: true

class BookSerializer
  include Alba::Resource

  root_key :book, :books

  attributes :id, :title, :filename, :published_at
end
