use context essentials2021
include image
include color 

fun scandinavian-flag(mideel-cross, outer-cross, background):
  frame(
overlay-align("left", "top", square(65, "solid",background ),
#topp venstre
  
  overlay-align("left", "bottom", square(65, "solid", background),
#nede venstre
      
    overlay-align("right", "top", rectangle(123, 65,"solid", background),
      #kors topp høyre
          
overlay-align("right", "bottom", rectangle(123, 65,"solid", background),
        #kors nede høyre  
            
overlay-align("left", "top", square(72, "solid", outer-cross),
          #kors nede venstre
              
overlay-align("left", "bottom", square(73, "solid", outer-cross),
            #kors nede venstre
                
              overlay-align("right", "top", rectangle(131, 73, "solid", outer-cross), 
              #kors topp høyre"
                  
              overlay-align("right", "bottom", rectangle(131, 73, "solid", outer-cross),
                #kors nede høyre
                      
                    rectangle(220, 160, "solid", mideel-cross))))))))))
  #selve grunnfundamentet med korset i midten
end

table: Land :: String, Innerst :: Any, Midten :: Any, Ytterst :: Any 
  row: "Norge", color(0, 48, 135,1), color(255, 255, 255,1), color(200, 16, 46,1)
  row: "Danmark", color(255, 255, 255,1), color(255, 255, 255,1), color(198, 12, 48,1)
  row: "Sverige", color(255, 205, 0,1), color(255, 205, 0,1), color(0, 75, 135,1)
  row: "Finland", color(0, 47, 108,1), color(0, 47, 108,1), color(255, 255, 255,1)
  row: "Island", color(220, 30, 53,1), color(255, 255, 255,1), color(2, 82, 156,1) 
  row: "Færøyene", color(237, 41, 57,1), color(0, 101, 189,1), color(255, 255, 255,1)
    
  
    
end 





