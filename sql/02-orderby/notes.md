정렬(ORDER BY)

사용방식
SELECT 컬럼명 FROM 테이블명 ORDER BY 컬럼명 [ACS, DESC]
ASC, DESC를 생략하면 ASC가 기본값으로 적용된다.
BUT 문장의 가독성을 높이기 위해서 -> 가능한 정렬 방식을 생략하지 않기.

정렬에서 NULL 값
- 데이터베이스 제품에 따라 기준이 다름
- NULL 값이 가장 큰 값으로 취급하거나, 가장 작은 값으로 취급한다.

여러가지 정렬 기준 정하기
ORDER BY 열명1 [ASC, DESC], 열명2 [ASC, DESC]
중복으로 정렬기준을 작성할 수 있다.