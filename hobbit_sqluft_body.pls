create or replace type body hobbit is
   --default (no parameter) constructor
   constructor function hobbit return self as result is
      lv_hobbit HOBBIT := hobbit('Sam Gamgee');
   begin
      self := lv_hobbit;
      return;
   end hobbit;

   --override signature
   constructor function hobbit
   (name varchar2) return self as result is
   begin
      self.name := name;
      return;
   end hobbit;

   --getter for the single attribute of the object type.
   member function get_name return varchar2 is
   begin
      return self.name;
   end get_name;
  
   --setter for a new copy of the object type.
   member function set_name (name varchar2)
   return hobbit is
      lv_hobbit HOBBIT;
   begin
      lv_hobbit := hobbit(name);
      return lv_hobbit;
   end set_name;

   --prints a salutation of the object type's attribute.
   member function to_string return varchar2 is
   begin
      return 'Hello '||self.name||'!';
   end to_string;

end;
/
