declare
   --declare and initialize a collection of grains.
   lv_string_table   STRING_TABLE :=
      string_table('Corn', 'Wheat', 'Rye', 'Barley');
   lv_string_varray  STRING_VARRAY := string_varray();
begin
   --print the first item in the array
   for i in 1..lv_string_table.count loop
      lv_string_varray.extend;
      lv_string_varray(i) := lv_string_table(i);
   end loop;
end;
/
