package swift.air.dto;

import lombok.Builder;
import lombok.Data;

/* �÷���    �������� Ÿ��
  --------- ---------  ------
 SCHEDULE_ID PK VARCHAR2(20)
 SCHEDULE_DEPARTURE_DATE UK DATE
 SCHEDULE_ARRIVAL_DATE UK DATE
 SCHEDULE_FLIGHT VARCHAR2(20)
 SCHEDULE_ROUTE_ID FK NUMBER 
 */

@Data
@Builder
public class Schedule {
    private String scheduleId;
    private String scheduleDepartureDate;
    private String scheduleArrivalDate;
    private String scheduleFlight;
    private int scheduleRouteId;
}
