connect io_test/io_test

create unique index t&1._ind1 on t&1 (a) nologging parallel 128;
create index t&1._ind2 on t&1 (b) nologging parallel 128;
alter index t&1._ind1 logging noparallel;
alter index t&1._ind2 logging noparallel;
exit

