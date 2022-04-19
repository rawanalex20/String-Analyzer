class StringAnalyzer 
    def has_vowels?(str) 
       !!(str =~ /[aeiou]+/i) 
    end 
 end
 
 describe StringAnalyzer do 
    context "With valid input" do 
       
       it "should detect when a string contains vowels" do 
          sa = StringAnalyzer.new 
          test_string = 'uuu' 
          expect(sa.has_vowels? test_string).to be true 
       end 
         
       it "should detect when a string doesn't contain vowels" do 
          sa = StringAnalyzer.new 
          test_string = 'bcdfg' 
          expect(sa.has_vowels? test_string).to be false
       end 

       it "should pass when string contains only one vowel and no other letters" do 
        sa = StringAnalyzer.new 
        test_string = 'aaa' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should pass when string contains only one vowel and no other letters" do 
        sa = StringAnalyzer.new 
        test_string = 'eee' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should pass when string contains only one vowel and no other letters" do 
        sa = StringAnalyzer.new 
        test_string = 'iii' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should pass when string contains at least only one vowel and some consonants" do 
        sa = StringAnalyzer.new 
        test_string = 'abcdefg' 
        expect(sa.has_vowels? test_string).to be true
       end
       
       it "should fail when string contains only consonants" do 
        sa = StringAnalyzer.new 
        test_string = 'mnklp' 
        expect(sa.has_vowels? test_string).to be false
       end

       it "should fail when it is an empty string" do 
        sa = StringAnalyzer.new 
        test_string = '' 
        expect(sa.has_vowels? test_string).to be false
       end

       it "should pass when string contains vowels, consonant, numbers and punctuation characters" do 
        sa = StringAnalyzer.new 
        test_string = 'abcde55345&??' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should fail when string contains numbers and punctuation characters only" do 
        sa = StringAnalyzer.new 
        test_string = '423432%%%^&' 
        expect(sa.has_vowels? test_string).to be false
       end

       it "should pass when string contains upper case vowels only" do 
        sa = StringAnalyzer.new 
        test_string = 'AEIOU' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should pass when string contains upper case and lower vowels only" do 
        sa = StringAnalyzer.new 
        test_string = 'AeiOuuuA' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should pass when string contains upper and lower case vowels and consonants" do 
        sa = StringAnalyzer.new 
        test_string = 'AbCdEfghI' 
        expect(sa.has_vowels? test_string).to be true
       end

       it "should fail when string contains upper case consonants only" do 
        sa = StringAnalyzer.new 
        test_string = '' 
        expect(sa.has_vowels? test_string).to be false
       end

       it "should fail when string contains white space characters only" do 
        sa = StringAnalyzer.new 
        test_string = 'BCDFG' 
        expect(sa.has_vowels? test_string).to be false
       end

    end 
 end