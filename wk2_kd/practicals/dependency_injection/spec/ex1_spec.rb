require 'ex1'

describe Note do

  subject(:note) { Note.new("Pusheen Notes", "Hello", formatter) }
  let(:formatter) { double :formatter }

  it { is_expected.to respond_to(:display) }

  it "displays a formatted note" do
    allow(formatter).to receive(:format).and_return("Title: #{note.title}\n#{note.body}")
    expect(note.display).to eq "Title: #{note.title}\n#{note.body}"
  end

end

