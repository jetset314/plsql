declare
  --declare and initialize a collection of grains.
  lv_string_list   string_table := string_table('Corn','Wheat');
begin
   --print the first item in the array.
   for i in 1..2 loop
      dbms_output.put_line('['||i||']['||lv_string_list(i)||']');
   end loop;
end; 
/
