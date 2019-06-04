require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  Skip to content
 
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@rudihinds 
 The password you provided is weak and can be easily guessed. To increase your security, please change your password as soon as possible.

Read our documentation on safer password practices.

9
1 1,184 learn-co-students/sinatra-dynamic-routes-lab-v-000
 Code  Issues 0  Pull requests 1,211  Projects 0  Wiki  Security  Insights
Done #61
 Open	Smulligan85 wants to merge 1 commit into learn-co-students:master from Smulligan85:master
+44 −1 
 Conversation 0   Commits 1   Checks 0   Files changed 1
 Open
Done #61
File filter...  
  45  app.rb 
@@ -1,4 +1,47 @@
require_relative 'config/environment'	require_relative 'config/environment'


 class App < Sinatra::Base	class App < Sinatra::Base
end 	
   get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end

   get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

   get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { str += "#{@phrase}\n" }
    str
  end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

   get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @oper
      when "subtract"
        (@num1 - @num2).to_s
      when "add"
        (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end


end