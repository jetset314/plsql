create or replace type hobbit is object
(name   varchar2(20)
,constructor function hobbit return self as result
,constructor function hobbit
 (name   varchar2 ) return self as result
,member function get_name return varchar2
,member function set_name (name varchar2)
 return hobbit
,member function to_string return varchar2)
 instantiable not final;
/
