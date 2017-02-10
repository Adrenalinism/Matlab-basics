A = input('Enter A Value = ');
B = input('Enter B Value = ');
C = input('Enter C Value = ');

x = 1;
y = 1;
z = 1;

while x < 100
    
    if x*A > x + y + z || y*B > x + y + z || z*C > x + y + z
    
    final_result = [x,y,z];
    disp(final_result);
    
    
    end
    x = x + 1;
    
        while y < 100
    
        if x*A > x + y + z || y*B > x + y + z || z*C > x + y + z
    
        final_result = [x,y,z];
        disp(final_result);
        
        end
    
        y = y + 1;
            while z < 100
    
            if x*A > x + y + z || y*B > x + y + z || z*C > x + y + z
    
            final_result = [x,y,z];
            disp(final_result);
    
            
            end
            z = z + 1;
            
            end
        end
end
        

    
    





    
    
    


            


