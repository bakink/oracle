connect io_test/io_test

drop table t&1 purge;
create table t&1 ( a number, b number, c date, d varchar2(210) );
insert /*+ append */ into t&1 select rownum, mod(rownum,50000), sysdate+mod(rownum,2500)-5000, rpad('1', 200, '2') 
from dba_objects, dba_objects, dba_objects where rownum<=419430400;
commit;
create unique index t&1._ind1 on t&1 (a) nologging;
create index t&1._ind2 on t&1 (b) nologging;
create index t&1._ind3 on t&1 (c) nologging;
exit

