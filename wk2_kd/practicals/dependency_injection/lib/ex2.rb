class Diary

  attr_reader :entries, :entry

  def initialize(entry = Entry.new(title, body))
    @entries = []
    @entry = entry
  end

  def add(entry)
    @entries << entry
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

# class Entry
#   def initialize(title, body)
#     @title = title
#     @body = body
#   end

#   attr_reader :title, :body
# end