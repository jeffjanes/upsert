#!/bin/bash
if [[ $1 ]]; then
	count=$1
else
	count=10000000
fi
echo "running $0 benchmark $count times"
while [ $count -gt 0 ]
do
	rand=`shuf -i 10-20 -n 1`
	echo "trying $0 $rand second run"
	psql -c "drop table if exists foo;"
	echo 'create unlogged table foo
	(
	merge int4 primary key,
	b int4,
	c text
	);' | psql
	pgbench -f benchsimple.sql -j 4 -c 8 -T $rand -n -s 150000
	./foocount.sh
	psql -c "select bt_parent_index_verify('foo_pkey');"
	psql -c "select bt_leftright_verify('foo_pkey');"
	if [[ $? != 0 ]]; then
		exit 1
	fi
	count=$(( $count - 1 ))
done
