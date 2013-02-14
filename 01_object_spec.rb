describe 'Everything is an Object!' do

  it "Objects have methods" do
    'two'.methods.should include :upcase
  end

  it "Objects have a class" do
    'two'.class.should eq String
  end

  it "Objects can be sent messages" do
    'two'.send(:upcase).should eq 'TWO'
    # that code sends the message 'upcase' to the string 'two'
    # same result as: 'two'.upcase
  end

  it 'Strings are objects' do
    "Two".should be_a Object
  end

  it 'Numbers are objects' do
    2.should be_a Object
  end

  it 'Hashes are objects' do
    {}.should be_a Object
  end

  it 'Arrays are objects' do
    [].should be_a Object
  end

  it 'Expressions evaluate to objects' do
    (1+2).should be_a Object
  end

  it 'Symbols are objects' do
    :symbol.should be_a Object
  end

  it 'Classes are objects' do
    Array.should be_a Object
  end

  it 'Ruby is object' do
    "Ruby".should be_a Object
  end

end