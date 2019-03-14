#Here I required the Diary and Entry classes
require 'ex2'

describe Diary do

    describe '#add' do

      it "adds an entry object into entries array" do
        entry_double = double :entry
        entry_class_double = double :entry, new: entry_double
        diary = Diary.new(entry_class_double)
        diary.add(entry_class_double)
        expect(diary.entries).to include(entry_class_double)
      end

      it "adds a specific entry into the entries array" do
        entry_double = double :entry
        entry_class_double = double :entry, new: entry_double
        pusheen_entry = entry_class_double.new(title = "Pusheen", body = "I like muffins")
        diary = Diary.new(pusheen_entry)
        diary.add(pusheen_entry)
        expect(diary.entries).to include(pusheen_entry)
      end

    end

    describe '#index' do

      it "returns the title of an entry" do
        entry_double = double :entry
        allow(entry_double).to receive(:title).and_return("Pusheen")
        allow(entry_double).to receive(:body).and_return("I like muffins")
        
        entry_class_double = double :entry, new: entry_double
        pusheen_entry = entry_class_double.new

        diary = Diary.new(pusheen_entry)
        diary.add(pusheen_entry)
        expect(diary.index).to eq "Pusheen"
      end

    end


end