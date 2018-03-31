declare
   --delcare a local user_defined record structure
   type title_record is record
   ( title     varchar2(60)
    ,subtitle  varchar2(60));

   --declare a variable that uses the record structure.
   lv_title_record   title_record;

begin

   --assign values to the record structure.
   lv_title_record.title :=  'Star Trek';
   lv_title_record.subtitle :=  'Into Darkness';

   --print the elements of the structure
   dbms_output.put_line('['||lv_title_record.title||']'||'['||lv_title_record.subtitle||']');

end;
/
