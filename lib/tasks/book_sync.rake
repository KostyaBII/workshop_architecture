# frozen_string_literal: true

namespace :book do
  desc "Sync books from PostgreSQL to MongoDB"
  task sync: :environment do
    puts "Starting book synchronization..."
    Books::MongoDb::Sync.call
    puts "Book synchronization completed."
  end
end
