require './creature'

class Dragon < Creature
    attr_accessor 
    @@all = []

    def initialize (name, color, age)
        super(name, color, age)       
        @@all << self
    end

    def self.all
        @@all
    end

    def murder
        puts "
        
        
        
                                 RAAAAAWRRR"
    end

    def eat_someone (person, dragon_gen)
        # puts "oh no, it's #{d1}!"
        # a = gets.strip
        
        puts "                        #{person} tastes good"
        if dragon_gen == "Smog"
            puts '          <>=======()
        (///\___   //|/\/\          ()==========<>_
               /\_// | /\/\        ////|/\   ______// /\)
                  /\_|  /\/\      //// | /\_//
                     /\|/\//|/\_   ////  ///\//
                       (oo)/\ /\_////  //
                      ////_///\_/\// //  |
                     @@//  |=/\  /\  |
                           /\_=/\_ /\ |
                             /\==/\ /\|/\_ 
                          __(/\===/\(  )/\
                         (((~) __(_//   |
                               (((~) /\  //
                               ______// //
                               //------//        Art by Shanaka Dias
                               
        YOU DIED'
        else
            puts '
                            ,-,-      
                           // // |      
         ,-.             _// // //       
         (-_          _,-. `Z_/        
         /#:      ,-._,-.    /\  _     
         /#    _(_-._()/\     /\" |    
         --._.--.                 |    
        // **                      L-./\ 
       /\,--^---v--v-._        //   /\ | 
       /\_________________,-.      | 
                    /\           
                      /\          
Art by Wny               /\  
                              YOU DIED'
        end
    end

    

    # def gestate 
    #     #  puts "We don't do that"
    # end


    # def sleep

    # end

end