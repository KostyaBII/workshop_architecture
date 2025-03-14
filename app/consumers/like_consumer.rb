# frozen_string_literal: true

class LikeConsumer < ApplicationConsumer

  def consume
    messages.each do |message| 
      puts message.payload
      like = Like.find_or_create_by(message.payload).increment!(:total)
      puts like.inspect
    rescue StandardError => e
      # TODO: implement DLQ
    ensure
      mark_as_consumed(message)
    end
  end
end
