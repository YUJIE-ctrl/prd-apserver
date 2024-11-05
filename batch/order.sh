
#!/bin/bash
export PGHOST=prd-db.c3q2gmswshou.ap-northeast-1.rds.amazonaws.com
export PGDATABASE=postgres
export PGUSER=root
export PGPASSWORD=Abcd1234
psql -c "\COPY order_main TO '/tmp/order.csv' WITH CSV DELIMITER ',' ;"
exit 0