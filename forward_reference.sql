declare
   procedure jack;
   function hector return varchar2;
   
   procedure jack is
   begin
      dbms_output.put_line(hector||' World!');
   end jack;

   function hector return varchar2 is
   begin
     return 'Hello';
   end hector;
begin
   jack;
end;
/
