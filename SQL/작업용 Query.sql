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
    -- 회원의 결제 정보 저장
    	INSERT INTO PAYMENT(IDX, STATE, MEMBER_IDX, VEHICLE_IDX, INSURANCE_IDX, COUPON_IDX, FINAL_PRICE, PAID_TIME, START_DATE, END_DATE, CANCEL_DATE, RENT_LOCATION,RETURN_LOCATION, IS_MEMBER )
		VALUES(PAYMENT_SEQ.NEXTVAL, 0, #{memberIdx}, #{vehicleIdx}, #{insuranceIdx}, 0, #{finalPrice}, SYSDATE, #{startDate}, #{endDate}, DEFAULT, #{rentLocation}, #{returnLocation}, #{ismember})
    -- 비회원의 결제 정보 저장
        INSERT INTO NMEMPAYMENT(PAYMENT_IDX, NAME, BIRTH, PHONE_NUMBER, LICENSE, EMAIL) 
		VALUES(PAYMENT_SEQ.CURRVAL, #{name}, #{birth}, #{phoneNumber}, #{license}, #{email})

-- ReviewController
    --해당 차량에 대한 리뷰 목록 조회
    	SELECT * FROM REVIEW R LEFT OUTER JOIN MEMBER_INFO M ON R.MEMBER_IDX = M.IDX
		  WHERE R.VEHICLE_IDX=#{idx} ORDER BY CREATE_DATE ASC
    --리뷰 좋아요 
        UPDATE REVIEW SET RECOMMEND=(SELECT RECOMMEND from review WHERE IDX =#{idx}) + 1 WHERE IDX =#{idx}
    --리뷰 수정
        UPDATE REVIEW SET CONTENT=#{content} WHERE IDX =#{idx}
    --리뷰 삭제
    	DELETE FROM REVIEW WHERE IDX =#{idx}
    --리뷰 신고
         INSERT INTO REPORT(IDX,REVIEW_IDX,MEMBER_IDX,REASON,STATUS,START_DATE) 
		VALUES(REPORT_SEQ.NEXTVAL,#{idx}, (SELECT IDX FROM MEMBER WHERE USERNAME=#{name}), #{reason}, DEFAULT, SYSDATE)
    --특정 리뷰 조회
         SELECT * FROM REVIEW WHERE IDX = #{idx}

-- VehicleController
    -- 선택한 날짜 범위 내에 존재하는 차량 인덱스 조회
        SELECT VEHICLE_IDX FROM RESERVATION WHERE RESRV_START BETWEEN 날짜 AND 날짜 OR RESERV_END BETWEEN 날짜 AND 날짜;
    -- 조회한 인덱스가 아닌 차량 조회
        SELECT * FROM VEHICLE WHERE IDX NOT IN 1;
    --체크박스, 검색어, 페이징 처리를 포함한 차량 목록 조회
        	WITH T AS (SELECT ROW_NUMBER() OVER(ORDER BY V.IDX) NUM, V.*, F.TYPE AS FUELNAME, C.TYPE AS TYPENAME, L.NAME
			   FROM FUELTYPE F, CARTYPE C, VEHICLE V, LOCATION L
			  WHERE V.CARTYPE_IDX = C.IDX AND V.FUELTYPE_IDX = F.IDX AND V.LOCATION_IDX = L.IDX
	        <if test="typeList !=null">
			    AND C.IDX IN
                <foreach collection="typeList" item="type" separator="," open="(" close=")">
                    #{type}
                </foreach>
		    </if>
		    <if test="fuelList !=null">
		    	AND F.IDX IN
                <foreach collection="fuelList" item="fuel" separator=","  open="(" close=")">
                    #{fuel}
                </foreach>
	    	</if>
	    	<if test = "keyword != null">
		    	AND V.MODEL LIKE #{keyword}
	    	</if>
			) SELECT * FROM T
			   WHERE NUM BETWEEN 1 AND #{page}
    --특정 차량의 대여지점 정보 조회
     		 SELECT * FROM VEHICLE V LEFT OUTER JOIN LOCATION L
 		     ON V.LOCATION_IDX = L.IDX WHERE V.IDX = #{idx}
    	 	SELECT F.TYPE AS FUELNAME, C.TYPE AS TYPENAME
    --특정 차량의 연료타입, 차량타입 정보 조회
	 	  FROM FUELTYPE F, CARTYPE C, VEHICLE V
	     WHERE V.CARTYPE_IDX = C.IDX AND V.FUELTYPE_IDX = F.IDX AND V.IDX = #{idx}

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