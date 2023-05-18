![header](https://capsule-render.vercel.app/api?type=wave&color=a5c4e0&height=300&section=header&text=CHAZAZO&fontSize=90)

# chazazo :blue_car: 렌트카 사이트 
## CONTENTS
  1. [기획의도](#기획의도)
  2. [팀원소개](#팀원소개)
  3. [개발환경](#개발환경)
  4. [프로젝트기획](#프로젝트기획)
  5. [주요기능](#주요기능)
  6. [테스트케이스](#테스트케이스)
  7. [히스토리](#히스토리)
---
### 기획의도
![기획의도](https://github.com/diget611/Chazazo/assets/115057175/76900a41-4656-44e4-b869-473818cbb27c)
---
### 팀원소개
![팀원소개](https://github.com/diget611/Chazazo/assets/113296576/e2510030-03ab-454d-92bc-3e89849bb994)
---
### 개발환경
![개발환경](https://github.com/diget611/Chazazo/assets/115057175/d4ae43f4-eb2d-4a36-8be6-c5ef7ea53df5)
---
### 프로젝트기획
> #### ✅일정
> ![일정](https://github.com/diget611/Chazazo/assets/115057175/6aecf65f-aaf1-432b-beba-560007ebb229)
> #### ✅요구사항 정의서
> ![요구사항정의서1](https://github.com/diget611/Chazazo/assets/115057175/fafbd8ab-09b7-44ab-ad64-8ec40be8e3ce)
> ![요구사항정의서2](https://github.com/diget611/Chazazo/assets/115057175/9bd6285b-f9dc-4fff-bf67-5228248be8c3)
> ---
> #### ✅ERD
> ![ERD](https://github.com/diget611/Chazazo/assets/115057175/a88ef430-1e01-43a8-8a20-e02182441c9b)
> #### ✅클래스 다이어그램
> [전체 클래스 다이어그램 보기](https://github.com/diget611/Chazazo/assets/115057175/67e35919-7281-459f-b2c3-9da5934eb000)
> ---
> ![common](https://github.com/diget611/Chazazo/assets/115057175/2ba27a32-a73c-4861-9026-d4bfa6d8b45d)
> ---
> ![main1](https://github.com/diget611/Chazazo/assets/115057175/155f9184-f58f-40ee-b279-038e59b0781f)
> ![main2](https://github.com/diget611/Chazazo/assets/115057175/8c494613-f512-4d40-91b6-25f0ba720df5)
> > ---
> ![admin1](https://github.com/diget611/Chazazo/assets/115057175/a482479d-fc3f-4a6b-ba1c-c4a3669bb5e6)
> ![admin2](https://github.com/diget611/Chazazo/assets/115057175/ab5012db-9751-4157-a319-f93aa91b657c)
> ---
> #### ✅시퀀스 다이어그램
> ![시퀀스1](https://github.com/diget611/Chazazo/assets/115057175/e1d6ddb5-d3ad-4d36-8764-778b4a5babe6)
> ![시퀀스2](https://github.com/diget611/Chazazo/assets/115057175/1ec3957c-91c7-4794-99b2-d16787ca7d26)
> ---
> #### ✅URL매핑
> ![URL매핑](https://github.com/diget611/Chazazo/assets/115057175/d67f5a4c-2182-44d4-b0b0-b92d02240390)
---
### 주요기능
<p align="center">
  
  ![상현](https://github.com/diget611/Chazazo/assets/113296576/35bcb739-1fc6-4e9a-b690-9b55f631f039)

<details>
  <summary>회원가입 및 계정🔎</summary>
  
  ![회원가입로그인](https://github.com/diget611/Chazazo/assets/115057175/399f885b-929b-4258-9af9-b1578587df37)
  
  |핵심 기능|기능 설명|
  |--|----|
  |**회원가입**|각 컬럼별 유효성 검사 체크 후 가입 가능|
  |**인증번호 발송**|이메일 주소 체크 후 해당 주소로 회원가입시 필요한 인증번호 이메일 발송, 5분 동안만 인증번호 사용 가능|
  |**로그인**|아아디/비밀번호 제출을 통한 로그인|
  |**로그아웃**|로그아웃 버튼 클릭 또는 창 종료시 로그아웃|
  |**자동 로그인**|자동 로그인 체크시 자동 로그인 가능|
  |**아이디 찾기**|이메일 정보 확인을 통해 아이디 찾기 기능 제공|
  |**비밀번호 찾기**|아이디 및 이메일 정보 확인을 통해 비밀번호 찾기 기능 제공|
  
  
  ![회원가입](https://github.com/diget611/Chazazo/assets/115057175/b796e576-e548-4683-b567-c7451087ad3a)
  
  ![회원가입 이메일 체크](https://github.com/diget611/Chazazo/assets/115057175/f0beed8a-5bf0-4971-bbdd-5697fbcdf26d)
  
  ![로그인-로그아웃](https://github.com/diget611/Chazazo/assets/115057175/516cb2eb-e7ca-42df-981c-5c55e95b0bed)
  
</details>

<details>
  <summary>관리자 페이지🔎</summary>
  
  ![관리자](https://github.com/diget611/Chazazo/assets/115057175/d59eabe1-2612-4fff-82a8-de20450185e3)
  
   |핵심 기능|기능 설명|
  |--|----|
  |**통합 페이지**|통계 자료 및 각 관리 페이지로 이동할 수 있는 링크 제공|
  |**통계 확인**|날짜/지점별 매출, 예약 통계 확인
  |**회원 관리**|현재 가입된 회원 조회, 접수된 신고 상황 조회/ 수정
  |**예약 관리**|예약 상황 조회, 수정
  |**장소 관리**|매장 조회, 추가, 수정, 삭제
  |**메인페이지 관리**|차량 조회, 추가, 삭제
  |**쿠폰 관리**|등록된 쿠폰 조회, 쿠폰 추가 및 삭제, 각 쿠폰별 할인률/기간 설정
  
  ![통계1](https://github.com/diget611/Chazazo/assets/115057175/38ba9fe8-068a-4ec0-9ff0-88fd86bebd57)
  
  ![통계2](https://github.com/diget611/Chazazo/assets/115057175/3edffb2a-48a0-4dea-843a-8c66817963f6)
  

  
</details>

<details>
  <summary>채팅 문의🔎</summary>
  
  ![채팅문의](https://github.com/diget611/Chazazo/assets/115057175/9c95f36f-a6ec-4476-bbe6-19c6425c5331)
  
   |핵심 기능|기능 설명|
  |--|----|
  |**1:1문의**| 1:1문의 시작, 종료, 채팅검색/ 버튼 누르면 관련 답변 
  |**실시간 알림**|메시지 수신 시 실시간으로 알림 아이콘 변경|
  |**권한 구분**|로그인한 유저 권한에 따라 SOCKET연결 구분
  |**채팅 연결**|회원일 경우 현재 채팅방이 존재하면 해당 채팅방으로 

  
  ![채팅설정](https://github.com/diget611/Chazazo/assets/115057175/c3dbe352-2d20-4db4-8f16-c421a3abf4ab)
  
  ![채팅방설정](https://github.com/diget611/Chazazo/assets/115057175/69e3a270-6666-44d6-89d5-c5c6059cb2b5)
  
  ![채팅섭](https://github.com/diget611/Chazazo/assets/115057175/13accb0d-26f8-4675-9a1f-700e28c22286)

  ![채팅펍](https://github.com/diget611/Chazazo/assets/115057175/9ba05574-9c63-407a-ba4e-927b46cc1464)
  

  </details>
  

---

<p align="center">
  
  ![수정](https://github.com/diget611/Chazazo/assets/113296576/35092927-e327-4ee6-849f-85bba9ff0b3d)
  
<details>
  <summary>상품 조회🔎</summary>
  
  ![search](https://github.com/diget611/Chazazo/assets/113296576/d96713f5-f4e5-435a-9402-b5ae5bc06c50)
  
   |핵심 기능|기능 설명|
  |--|----|
  |**일반 조회**|스크롤 페이징 처리를 하여 상품 목록 출력
  |**카테고리 선택 조회**|카테고리 옵션 선택에 맞게 차량 목록 출력|
  |**검색어**|이름에 검색어가 포함된 차량 목록 출력|
  |**정렬**|검색 옵션을 포함한 목록을 추천순, 가격순대로 정렬하여 출력|
  |**정보 상세 조회**|특정 차량을 클릭하면 해당 차량 상세 페이지로 이동|

  

  ![상품조회3](https://github.com/diget611/Chazazo/assets/113296576/8bf883d4-2a94-46bc-9350-4e43175a9f78)

  ![상품조회2](https://github.com/diget611/Chazazo/assets/113296576/dbee8d59-5782-4acf-b36f-2df18cc1d069)

  ![상품조회](https://github.com/diget611/Chazazo/assets/113296576/957821c1-2eb1-4a07-a880-60e86358cc1f)
  
![리스트쿼리](https://github.com/diget611/Chazazo/assets/113296576/b34359ac-32a8-446a-9942-6afdd177c287)

  

</details>

<details>
  <summary>예약 / 결제🔎</summary>
  
 
  
 ![memberpay](https://github.com/diget611/Chazazo/assets/113296576/8ad32b33-31ea-4a16-80f4-b87cc51c0210)
  
  
  |핵심 기능|기능 설명|
  |--|----|
  |**예상 금액 조회**|보험종류, 쿠폰, 대여기간, 반납지점 선택에 따라 예상 금액 조회|
  |**예약자 정보 입력**|비회원은 유효성 검사를 통과한 정보만 입력 가능, 회원은 저장된 회원 정보를 출력|
  |**결제**|카드결제, 카카오페이 간편 결제 가능, 결제 후 고유 예약번호 부여, 비회원은 회원 정보를 따로 저장|
  
  ![예약](https://github.com/diget611/Chazazo/assets/113296576/e22e6e9b-6d03-4de4-b426-1609d8852edf)

  ![예약2](https://github.com/diget611/Chazazo/assets/113296576/33e637d5-641a-4f41-b50a-48b2297426a2)

  ![예약3](https://github.com/diget611/Chazazo/assets/113296576/f7c42283-a484-4a2f-9d7b-90cf321ada8c)

  ![결제](https://github.com/diget611/Chazazo/assets/113296576/b724f4a0-4e59-4e6f-8d12-0ed07ec45b4f)

  ![결제2](https://github.com/diget611/Chazazo/assets/113296576/75aae227-2d2f-4ab4-b690-e1d375ccfc49)

  ![결제3](https://github.com/diget611/Chazazo/assets/113296576/c58b72c2-0bdd-4149-acb3-79b07883a23d)

  ![결제4](https://github.com/diget611/Chazazo/assets/113296576/3fb1b910-1c54-4c7f-86d8-503e3892d27a)
  
![결제 추가](https://github.com/diget611/Chazazo/assets/113296576/bf6c788f-9d52-4e61-ae41-289612c78842)

</details>

<details>
  <summary>리뷰🔎</summary>
  
  ![review](https://github.com/diget611/Chazazo/assets/113296576/72d34f70-e845-4378-94d4-8f6dc2949254)
  
  |핵심 기능|기능 설명|
  |--|----|
  |**리뷰 조회**|상세 페이지 하단에 해당 차량 리뷰 목록 출력|
  |**리뷰 작성**|회원만 리뷰 작성 가능, 예약번호를 식별하여 예약자만 리뷰 작성 가능, 100자 글자수 제한|
  |**리뷰 수정**|본인이 작성한 리뷰 수정, 100자 글자수 제한|
  |**리뷰 삭제**|본인의 리뷰 삭제|
  |**별점**|리뷰 작성시 1~5점까지 별점 매기기|
  |**리뷰 신고**|다른 회원의 리뷰 신고 가능, 리뷰 신고 이유 선택 필수|
  |**좋아요**|회원인 경우 다름 회원의 리뷰에 좋아요 가능|
  
  
  ![리뷰](https://github.com/diget611/Chazazo/assets/113296576/91faa4cc-889f-4136-86b1-e0a6950131cb)
  
![리뷰2](https://github.com/diget611/Chazazo/assets/113296576/11706e78-3ece-4c52-9f67-54e14ec5a8e8)
  
![리뷰3](https://github.com/diget611/Chazazo/assets/113296576/7a9bd3f6-b28d-4ecb-8360-2a13a128b6ef)
  
![review2](https://github.com/diget611/Chazazo/assets/113296576/5e566c9d-acde-422b-af7b-af092e5af3eb)

</details>

---

<p align="center">
  
  ![유진](https://github.com/diget611/Chazazo/assets/113296576/6522077b-264e-4fe0-9e45-2d37ba5422fc)
  
<details>
  <summary>회원 정보 관리🔎</summary>
  
  ![비밀번호 확인](https://github.com/diget611/Chazazo/assets/114971252/50688c6f-ddda-4d5f-ad2e-c35c2b55240d)

  ![회원정보](https://github.com/diget611/Chazazo/assets/114971252/04a49e37-4dde-4208-8373-32975cdc4e17)
  ![회원정보수정](https://github.com/diget611/Chazazo/assets/114971252/7e5f3c01-d7a5-49b3-9f5f-6fce8920e4c1)
  ![회원정보1](https://github.com/diget611/Chazazo/assets/114971252/89a60abd-21ed-46c7-b11d-7635f0594f33)

  ![회원정보2](https://github.com/diget611/Chazazo/assets/114971252/52ef57f6-9658-4618-9399-4e9436c89ccc)
   |핵심 기능|기능 설명|
  |--|----|
  |**회원정보**|로그인한 회원 정보 출력|
  |**회원정보 수정**|비밀번호 확인 후 유효성 체크하고 회원 정보 수정|
  |**회원탈퇴**|예/아니오 확인 후 회원 탈퇴|
  |**예약내역 확인**|예약 완료 내역만 마이페이지 화면 출력|
  |**나의 리뷰**|회원이 작성한 모든 리뷰 확인 가능|
  |**관심 지점**|회원이 찜한 지점 확인/삭제 가능|
  
</details>

<details>
  <summary>예약 관리🔎</summary>
  
  ![예약내역](https://github.com/diget611/Chazazo/assets/114971252/8e776ed7-8c6d-4fd3-9457-bb9ebf7ae734)
  ![예약](https://github.com/diget611/Chazazo/assets/114971252/78cf9da8-2809-4da5-925c-1d53b51a1c83)

  ![예약취소](https://github.com/diget611/Chazazo/assets/114971252/130c6f4b-8302-47d6-a173-182a074ba770)
  ![예약3](https://github.com/diget611/Chazazo/assets/114971252/cbe97cea-9576-425f-a76e-c71cc02e53b6)
  ![예약취소](https://github.com/diget611/Chazazo/assets/114971252/c53ee63c-d309-4008-a318-c9256cec20c2)


  ##### 비회원
  ![비회원 예약](https://github.com/diget611/Chazazo/assets/114971252/4ae01cd9-529b-45c8-9f7a-fde3e168fd37)
  ![예약1](https://github.com/diget611/Chazazo/assets/114971252/829e9e3b-4c4d-480e-a12b-d9f5429d284f)
  ![예약2](https://github.com/diget611/Chazazo/assets/114971252/6fdc3ccb-6207-4d77-ae00-9f853e0a3a46)


  
  |핵심 기능|기능 설명|
  |--|----|
  |**예약내역 확인**|예약상태에 따른 내역 출력|
  |**예약 상세 내역**|회원의 렌트 내역 상세 출력|
  |**예약 취소**|취소 대기 중으로 예약상태 변경|
  |**비회원 예약 조회**|이름/예약번호/휴대전화 번호로 정보 확인 후 예약내역 출력|

  
</details>

<details>
  <summary>쿠폰 관리🔎</summary>
  
  ![쿠폰관리](https://github.com/diget611/Chazazo/assets/114971252/3936c856-1aaf-4c0f-8f26-9ae559903978)
  ![쿠폰](https://github.com/diget611/Chazazo/assets/114971252/47d59523-c272-4644-b0fb-684144a7b464)

  <!-- ![관심지점](https://github.com/diget611/Chazazo/assets/114971252/5c756115-8d78-48a9-bb79-f5cdd470b62b) -->

  |핵심 기능|기능 설명|
  |--|----|
  |**쿠폰 등록**|쿠폰 중복 검사 후 쿠폰 등록 / 신규회원인 경우 쿠폰 자동 등록|
  |**쿠폰 조회**|사용가능한 쿠폰 조회|
  
  

  
</details>
  
---
### ✅테스트케이스
> [테스트케이스 보러가기](https://docs.google.com/spreadsheets/d/1rj9soiH1hyUUnbb_U4HiE6TtXz4YejvCEcRbCBFXKgE/edit?usp=share_link)
  
 ---
 ### ✅히스토리
  
![히스토리](https://github.com/diget611/Chazazo/assets/113296576/77f42091-7132-45d0-9e31-94277dacba3f)

  
---
  
![Footer](https://capsule-render.vercel.app/api?type=wave&color=a5c4e0&height=300&section=footer&text=감사합니다&fontSize=90)
