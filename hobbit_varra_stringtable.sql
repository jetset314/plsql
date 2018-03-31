declare
   --declare and initialize a collection of hobbits
   lv_string_table STRING_TABLE :=
      string_table('Drogo Baggins', 'Frodo Baggins');
   lv_hobbit_table HOBBIT_TABLE := hobbit_table(hobbit('Bungo Baggins')
                                               ,hobbit('Bilbo Baggins'));
begin
   --assign the members from one collection to the other
   for i in 1..lv_string_table.count loop
      lv_hobbit_table.EXTEND;
      lv_hobbit_table(lv_hobbit_table.count) :=
         hobbit(lv_string_table(i));
   end loop;
   --print the members of the hobbit table.
   for i in 1..lv_hobbit_table.COUNT loop
      dbms_output.put_line(lv_hobbit_table(i).to_string());
   end loop;
end;
/
