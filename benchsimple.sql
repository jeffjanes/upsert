\set extent 10 * :scale
\setrandom rec 1 :extent
\setrandom irec 1 :extent
with rej as(insert into foo(merge, b, c) values(:rec, :rec * random(), 'foofoofoo') on conflict select * for update) update foo set c = rej.c from rej where foo.merge = rej.merge;
