DCL STATEMENTS :
====================

DCL: DATA CONTROL LANGUAGE

GRANT  : GIVE PERMISSION TO USER OR GRANTS SPECIFIC PRIVILEGES TO USERS OR ROLES.
SYNTAX: GRANT privilege_name ON object_name TO {user | role | PUBLIC};
  EX: GRANT ALL ON employees TO hr_user;


REVOKE  : TO REMOVE USER PERMISSSION OR REMOVES PREVIOUSLY GRANTED PRIVILEGES FROM USERS OR ROLES.

SYNTAX: REVOKE privilege_name ON object_name FROM {user | role | PUBLIC};

EX: REVOKE ALL ON employees FROM hr_user;

