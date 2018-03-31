declare

   --declare local variables.
   lv_outer   varchar2(30)   default 'OUTER';
   lv_active  varchar2(30)   default 'OUTER';

begin

   --print the value before the inner block.
   dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');
   
      --nested block
      declare
         --declare local variable
         lv_active   varchar2(30)   default 'INNER';
      begin
         --print the value before the assignment.
         dbms_output.put_line('Inner ['||lv_outer||']['||lv_active||']');
   
         --assign new value to variable
         lv_outer := 'INNER';
   
         --print the value after the assignment 
         dbms_output.put_line('Inner ['||lv_outer||']['||lv_active||']');
      end;
   
   --print the value after the nested block.
   dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');


exception
   when others then
   dbms_output.put_line('Exception '||SQLERRM||']');

end;
/

