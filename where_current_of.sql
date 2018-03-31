declare
   cursor c is
      select * from item
       where item_id between 1031 and 1040
         for update;
begin
   for i in c loop
      update item set last_updated_by = 3
       where current of c;
   end loop;
end;
/
