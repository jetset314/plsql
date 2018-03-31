declare
   type title_record is record(
      id         number
     ,title      varchar2(60)
     ,subtitle   varchar2(60));
   type title_collection is table of title_record;
   lv_title_collection  title_collection;
   cursor c is
      select item_id
            ,item_title
            ,item_subtitle
        from item;
begin
   open c;
   loop
      fetch c bulk collect into lv_title_collection limit 20;
      exit when lv_title_collection.count = 0;
         forall i in lv_title_collection.first..lv_title_collection.last
            update item_temp
               set item_title = lv_title_collection(i).title
                  ,item_subtitle = lv_title_collection(i).subtitle
             where item_id = lv_title_collection(i).id;
   end loop;
   close c;
end;
/
