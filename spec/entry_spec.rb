require_relative '../models/entry'

RSpec.describe Entry do

  describe "attributes" do
    let(:entry) { Entry.new('nate', '123.456.7890', 'email@gmail.com')}

    it "responds to name" do
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry.name).to eq('nate')
    end

    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone number" do
      expect(entry.phone_number).to eq('123.456.7890')
    end

    it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      expect(entry.email).to eq('email@gmail.com')
    end
  end

  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('nate', '123.456.7890', 'email@gmail.com')
      expected_string = "Name: nate\nPhone Number: 123.456.7890\nEmail: email@gmail.com"

      expect(entry.to_s).to eq(expected_string)
    end
  end
end
