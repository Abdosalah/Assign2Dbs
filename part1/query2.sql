connect 'jdbc:derby:OSP_DB';




select count(*)
from OSP_PARKING
where AREA_ID = 20
  and DURATION > 6000;