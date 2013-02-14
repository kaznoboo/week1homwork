
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "String".class.should eq String
    end
    
    it "can contain bare single-quote (') characters" do
      "'".should eq '\''
    end
    
    it "allow the escape of double quote (\") characters" do
      "\"".should eq '"'
    end
    
    it "allow interpolation (Ruby code within the string)" do
      coffee = "cup"
      "#{coffee}".should eq 'cup'
    end
    
    it "replace \t with a tab character" do
     "\\t".should eq '\t'
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "\\n".should eq '\n'
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      "a b c".should eq %[a b c]
      
    end
  end
  


  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
   end
    
    it "are of class String" do
      'String'.class.should eq String
    end
    
    it "allow double-quote (\") characters" do
      '"'.should eq "\""
    end

    it "allow the escape of single quote (') characters" do
      '\''.should eq "'"
    end
    
    it "does not interpolate Ruby code" do
      mac = 'better'
      '#{mac}'.should_not eq "bad"
    end

    it "does not escape newline characters" do
      
      '/n'.should_not eq "\n"
    end
  end
  

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      %Q{a b c}.should eq "a b c"

    end
    

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
      %q{ABC CBS NBC}.should eq 'ABC CBS NBC'
    end

  end
end