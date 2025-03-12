# frozen_string_literal: true

module Books
  module MongoDb
    class Sync
      BATCH_SIZE = 100000

      def self.call
        ::MongoDb::Book.delete_all

        Book.find_in_batches(batch_size: BATCH_SIZE) do |batch|
          mongo_books = batch.map do |pg_book|
            {
              title: pg_book.title,
              series: pg_book.series,
              serno: pg_book.serno,
              libid: pg_book.libid,
              size: pg_book.size,
              filename: pg_book.filename,
              del: pg_book.del,
              ext: pg_book.ext,
              published_at: pg_book.published_at,
              insno: pg_book.insno,
              folder_id: pg_book.folder_id,
              language_id: pg_book.language_id
            }
          end
          ::MongoDb::Book.collection.insert_many(mongo_books)
        end
      end
    end
  end
end
