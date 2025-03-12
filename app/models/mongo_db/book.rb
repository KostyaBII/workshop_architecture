# frozen_string_literal: true

module MongoDb
  class Book
    include Mongoid::Document
    include Mongoid::Timestamps

    field :title, type: String
    field :series, type: String
    field :serno, type: String
    field :libid, type: Integer
    field :size, type: Integer
    field :filename, type: String
    field :del, type: Boolean, default: false
    field :ext, type: String, default: 'fb2'
    field :published_at, type: Date
    field :insno, type: String
    field :folder_id, type: String
    field :language_id, type: String

    index({ folder_id: 1, libid: 1 }, { unique: true, name: "idx_on_folder_id_libid" })
  end
end
