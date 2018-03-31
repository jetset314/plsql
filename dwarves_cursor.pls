declare
   --create a cursor to unhide an invisible column.
   cursor dwarf_cursor is
      select dwarves_id
            ,name
            ,allegiance
        from dwarves;

   --anchor to a table witn an invisible column.
   dwarf   dwarf_cursor%rowtype;

begin
   --select all columns into a local variable.
   select dwarves_id
         ,name
         ,allegiance
     into dwarf
     from dwarves FETCH FIRST 1 ROWS ONLY;

   --print the invisible column.
   dbms_output.put_line('['||dwarf.name||']['||dwarf.allegiance||']');

end;
/
