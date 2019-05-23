connect 'jdbc:derby:OSP_DB';


select count(*)
from OSP_PARKING
where DEVICE_ID > 20000
  and DEPART < '2018-01-25';