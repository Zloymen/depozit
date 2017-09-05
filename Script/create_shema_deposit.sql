create user deposit identified by deposit default tablespace deposit account unlock;
grant connect,resource  to deposit;
----
create role deposit_ROLE;
grant connect to deposit_ROLE;
grant resource to deposit_ROLE;
grant unlimited tablespace to deposit_ROLE;
---
create user adm_deposit identified by admdeposit default tablespace deposit account unlock;
grant deposit_ROLE to adm_deposit; 
