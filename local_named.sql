declare
   --declare local variables.
   lv_outer   varchar2(30)   default 'OUTER';
   lv_active  varchar2(30)   default 'OUTER';

   --a local procedure without any formal parameters.
   procedure local_named is
      --declare local variable
      lv_active   varchar2(30) default 'INNER';
   
   begin
   
      --print the value before the inner block.
      dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');

      --assign new value to variable
      lv_outer := 'INNER';

      --print the value after the assignment 
            dbms_output.put_line('Inner ['||lv_outer||']['||lv_active||']');

   end local_named;

begin
   --print the values before the inner block
   dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');
  
   --call to the locally declared named procedure.
   local_named;

   --print the value after the nested block. 
   dbms_output.put_line('Outer ['||lv_outer||']['||lv_active||']');

exception
   when others then
   dbms_output.put_line('Exception '||SQLERRM||']');

end;
/

