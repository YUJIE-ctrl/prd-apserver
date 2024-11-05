#!/bin/bash
/usr/local/bin/aws s3 mv /tmp/order.csv s3://prd-data-transform-bucketyujie/order_`date '+%Y%m%d%H%M%S'`.csv
exit 0