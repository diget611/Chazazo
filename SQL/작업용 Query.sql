-- MemberController

-- InquiryController

-- MainController

-- ReservationController
    --cartype 선택 검색
         select * from vehicle  cartype where cartype.CARTYPE_IDX='1';
    --fueltype 선택 검색
        select * from vehicle  fueltype where fueltype.FUELTYPE_IDX='2';
    --차량모델명 검색
        select * from vehicle where model ='제네시스';
    
    --복합검색          
     select vehicle.*, 
             cartype.* ,
             fueltype.*
             from vehicle 
             join cartype on vehicle.cartype_idx=cartype.idx
             join fueltype on vehicle.fueltype_idx=fueltype.idx
             where cartype.idx=2
                   and fueltype_idx=2;
                   
-- AdminManageController

-- AdminStatController

-- PaymentController
    -- 취소 수수료 계산할 때 필요한 기간(현재날짜 - 결제날짜) 계산용 쿼리문
        SELECT TO_NUMBER(EXTRACT(DAY FROM (SYSTIMESTAMP - PAY_DATE))) * 24 + TO_NUMBER(EXTRACT(HOUR FROM (SYSTIMESTAMP - PAY_DATE))) FROM PAYMENT WHERE PAY_CODE = 2;

-- ReviewController

-- VehicleController
    -- 선택한 날짜 범위 내에 존재하는 차량 인덱스 조회
        SELECT VEHICLE_IDX FROM RESERVATION WHERE RESRV_START BETWEEN 날짜 AND 날짜 OR RESERV_END BETWEEN 날짜 AND 날짜;
    -- 조회한 인덱스가 아닌 차량 조회
        SELECT * FROM VEHICLE WHERE IDX NOT IN 1;

-- AdminController
    -- 통계용 쿼리
-- 차량별 예약 현황 (donut or pie chart)
SELECT * FROM VEHICLE;
    -- 모델별
    SELECT V.MODEL, COUNT(*), SUM(FINAL_PRICE)
      FROM PAYMENT P
     INNER JOIN VEHICLE V ON P.VEHICLE_IDX = V.IDX GROUP BY V.MODEL;
    -- 분류별
    SELECT V.CARTYPE_IDX, COUNT(*), SUM(FINAL_PRICE)
      FROM PAYMENT P
     INNER JOIN VEHICLE V ON P.VEHICLE_IDX = V.IDX GROUP BY V.CARTYPE_IDX;
    -- 연료별
    SELECT V.FUELTYPE_IDX, COUNT(*), SUM(FINAL_PRICE)
      FROM PAYMENT P
     INNER JOIN VEHICLE V ON P.VEHICLE_IDX = V.IDX GROUP BY V.FUELTYPE_IDX;
-- 회원 비회원 예약 현황 (연월일별)
    SELECT IS_MEMBER, PAID_TIME, COUNT(*), SUM(FINAL_PRICE)
      FROM PAYMENT GROUP BY IS_MEMBER, PAID_TIME
     ORDER BY PAID_TIME; 
-- 매출 / 예약 현황(총계 / 지점, 연월일별)
    SELECT EXTRACT(YEAR FROM PAID_TIME) AS YEAR, EXTRACT(MONTH FROM PAID_TIME) AS MONTH, EXTRACT(DAY FROM PAID_TIME) AS DAY, COUNT(*), SUM(FINAL_PRICE)
      FROM PAYMENT GROUP BY EXTRACT(YEAR FROM PAID_TIME), EXTRACT(MONTH FROM PAID_TIME), EXTRACT(DAY FROM PAID_TIME)
     ORDER BY YEAR, MONTH, DAY;
    SELECT PAID_TIME, RENT_LOCATION, COUNT(*), SUM(FINAL_PRICE)
      FROM PAYMENT GROUP BY RENT_LOCATION, PAID_TIME ORDER BY PAID_TIME, RENT_LOCATION;
-- 회원가입 현황(연월일별)
    SELECT REGI_DATE, COUNT(*) FROM MEMBER_INFO GROUP BY REGI_DATE;