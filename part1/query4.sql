connect 'jdbc:derby:OSP_DB';


select count(*)
from OSP_PARKING
where DEVICE_ID > 20000
  and ARRIVE > '2017-08-20';