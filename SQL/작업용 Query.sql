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
        SELECT * FROM VEHICLE WHERE IDX NOT IN();

-- AdminController
    -- 통계용 쿼리
        SELECT PRICE FROM RESERVATION INNER JOIN PAYMENT ON RESERVATION.IDX = PAYMENT.RESERV_IDX WHERE RENT_LOCATION = 5;