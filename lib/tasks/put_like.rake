# frozen_string_literal: true

namespace :like do
  desc "Put like via kafka"
  task put: :environment do
    puts "Trying to put like via kafka..."
    Karafka.producer.produce_sync(
      topic: 'likes',
      payload: { book_id: '00001c68-24f8-4749-9dc2-3904add9088a' }.to_json
    )
    puts "Now lets check like in console..."
  end
end
