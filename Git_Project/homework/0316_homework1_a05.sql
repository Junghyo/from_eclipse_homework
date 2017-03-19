/*
 과제1. (homework 1)
 6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
 사원의 인턴기간 만료시점을 출력하고, 6개월 간의 급여 총합을 계산하세요.
 월급여 : sal/13
 인턴기간 : 월급여의 70%
 인턴기간 월급여 총액을 10단위 절삭해서 출력
 사원번호		사원명	  입사일		인터기간만료시점		월급여	   인턴기간월급여 		 인턴기간월급여총액	
*/
	select empno 사원번호, ename 사원명, hiredate 입사일,
		   add_months(hiredate,6) 인턴기간만료시점, sal/13 월급여,
		   sal/13*0.7 인턴기간월급여,
		   trunc(sal/13*0.7*6,-1) 인턴기간월급여총액
	from emp;

/*
 과제2. (homework 2)
 급여계산 -- 3단계 급여일을 나누어서 출력하세요.
 1단계. 당월 20일
 2단계. 당월 마지막날
 3단계. 다음달 10일
 사원 입사일 첫월급1 첫월급2 첫월급3
*/	
	select ename 사원, hiredate 입사일, last_day(hiredate-20)+20 월급날1, last_day(hiredate) 월급날2, last_day(hiredate)+20 월급날3 from emp;

/*
 과제3. (homework 3)
 근무개월수에 따른 차등 보너스 지급
 가장 오래된 개월~가장 최근에 입사한 개월 수
 1/3=30% 1/3=20% 1/3=10% (연봉기준)
 사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스%, 보너스금액
*/
	select ename 사원, hiredate 입사일,
		   to_char(sysdate, 'YYYY/MM/DD AM HH"시" MI"분" SS"초"') 현재날짜,
		   trunc(months_between(sysdate, hiredate), 0) 근무개월수,	
		   trunc(months_between(sysdate, hiredate),-1)-400 보너스   	   
	from emp;

/*
 과제4. (homework 4)
 조회값이 '1981년01월01일' 부터 '1982년12월12일' 사이의 데이터 중에서 부서가 30인 데이터를 조회하여 다음과 같이 출력
 사원명(10자리-앞에 #기호처리)
 직책(10자리-나머지 뒤에 '-'처리)
 입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
 연봉(####1,600.0 표시) 
*/
	select lpad(ename,10,'#') 사원명,
		   rpad(job,10,'-') 직책,
		   to_char(hiredate,'YYYY"년" MM"월" DD"일" DAY HH24"시" MI"분" SS"초"') 입사일,
		   lpad(trim(to_char(sal,'9,999.9')), 11, '#') 연봉
	from emp;	
	
/*
 과제5. (homework 5)
 이름 관리자번호 보너스 ==> 데이터가 없을 때는 관리자번호 경우 '최고레벨', 보너스는 '0'표시	
*/		
	select nvl(to_char(mgr),'최고레벨') 관리자번호, nvl(comm,0) 보너스 from emp;
	select type(mgr) from emp;
	