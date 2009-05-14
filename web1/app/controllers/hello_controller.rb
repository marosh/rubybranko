class HelloController < ApplicationController
  def pozdrav
    @aktualny_cas = Time.now
  
  end
  
  def testujsekunndu
   if ((Time.now.hour)/2)==(((Time.now.hour)/2).to_int)
      render(:action => :par)
   else
     render(:action => :nepar)
   end
  end
  
      
      
      
          
      def par
      end
      
      def nepar
        
      end
  
  
end
