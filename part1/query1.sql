connect 'jdbc:derby:OSP_DB';



select count(*)
from OSP_PARKING
where STREET_ID > 800
  and AREA_ID = 15
  and DURATION < 10000;