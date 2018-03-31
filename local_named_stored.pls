create or replace procedure local_named is
   --declare local variable.
   lv_active      varchar2(30)  default 'INNER';
   lv_outer       varchar2(30)  default '     ';
begin
   --print the value before the assignment
   dbms_output.put_line('INNER ['||lv_outer||']['||lv_active||']');

   --assign new value to variable.
   lv_outer := 'INNER';

   --print the value after the assignment.
   dbms_output.put_line('INNER ['||lv_outer||']['||lv_active||']');
end local_named;
/
