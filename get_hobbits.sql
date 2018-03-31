create or replace function get_hobbits
return hobbit_table is
   --declare a collection of hobbits
   lv_hobbit_table HOBBIT_TABLE := hobbit_table(
                                                 hobbit('Bungo Baggins')
                                                ,hobbit('Bilbo Baggins')
                                                ,hobbit('Drogo Baggins')
                                                ,hobbit('Frodo Baggins'));
begin
   return lv_hobbit_table;
end;
/
