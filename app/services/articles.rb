module Services
  class Articles

    class << self

      def manifest(articles_dir = File.join(Bio::App.root, 'views/articles'))
        # Go through all items recursively in articles dir and get their metadata
        # Return an array of hashes such as [{ "title": "foobar" }, ...]
        Dir.
          glob(File.join(articles_dir, '**/*') ).
          map{ |entry| !File.directory?(entry) ? get_metadata(entry) : nil }.
          compact
      end

      private

        def get_metadata(file)
          # Open the file, scan for meta comments, which are lines 
          # beginning with two hashes followed by property: value
          # For example: '## title: foobar'. Take these lines and
          # return an array such as [["title": "foobar"], ...].
          # Finally, return a hash like { "title": "foobar" } or nil.
          r = File.
            open(file).
            read().
            scan( /^## (.*:.*)\n/ ).
            map{|d| d.first.split(': ')}
          r.empty? ? nil : Hash[r]
        end

    end

  end
end