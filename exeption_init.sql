declare
   lv_sys_context   varchar2(20);
   lv_error         exception;
   pragma exception_init(lv_error, -01017);
begin
   raise lv_error;
exception
   when lv_error then
   dbms_output.put_line('This is ['||SQLERRM||']');
end;
/
