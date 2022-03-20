RSpec.describe HelloWorld do
  it "instantiates" do
    expect(described_class.new).to be_a(HelloWorld)
  end
end
