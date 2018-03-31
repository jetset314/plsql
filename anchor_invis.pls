declare
   --Anchor to a table with an invisible column. */
   dwarf  dwarves%rowtype;
begin
   --select all columns into a local variable
   select * into dwarf from dwarves fetch first 1 rows only;

   --print the invisitble column.
   dbms_output.put_line('['||dwarf.name||']['||dwarf.allegiance||']');
end;
/ 
