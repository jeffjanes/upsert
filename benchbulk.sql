with rej as (
	insert into foo(merge, b, c)
	values
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo'),
	(1000 * random(), 5, 'foofoofoo')
	on conflict select * for update)
update foo set c = rej.c from rej where foo.merge = rej.merge;
