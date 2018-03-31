declare

   lv_search_string varchar2(60);
   cursor c (cv_search varchar2) is
      select item_title
        from item
        where regexp_like(item_title, '^'||cv_search||'*+');

begin

   for i in c ('&input') loop
   dbms_output.put_line(i.item_title);
   end loop;

end;
/

