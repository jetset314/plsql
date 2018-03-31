declare
   --delcare local variable.
   lv_input   varchar2(30) default 'OUTER';
begin
   --print the value before the inner block.
   dbms_output.put_line('Outer block ['||lv_input||']');
      --nested block
      begin
         --print the value before the assignment.
         dbms_output.put_line('Inner block ['||lv_input||']');
         --assign new value to variable
         lv_input := 'INNER';
         --print the value after the assignment.
         dbms_output.put_line('Inner block ['||lv_input||']');
      end;
   --print the value after the assignment.
   dbms_output.put_line('Outer block ['||lv_input||']');
exception
   when others then
      dbms_output.put_line('Exception ['||SQLERRM||']');
end;
/
