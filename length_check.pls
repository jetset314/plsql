declare
   
   lv_fixed      char(40)      := 'Somthing not quite long.';
   lv_variable   varchar2(40)  := 'Somthing not quite long.';

begin

   dbms_output.put_line('Fixed Length:  ['||LENGTH(lv_fixed)||']');
   dbms_output.put_line('Fixed Length:  ['||LENGTH(lv_variable)||']');

end;
/

