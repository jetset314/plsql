declare
   type title_record is record(
      title      varchar2(60)
     ,subtitle   varchar2(60));
   type title_collection is table of title_record;
   lv_title_collection  title_collection;
   cursor c is
      select item_title
            ,item_subtitle
        from item;
begin
   open c;
   loop
      fetch c bulk collect into lv_title_collection limit 20;
      exit when lv_title_collection.count = 0;
         for i in 1..lv_title_collection.count loop
            dbms_output.put_line('['||lv_title_collection(i).title||']');
         end loop;
   end loop;
   close c;
end;
/
