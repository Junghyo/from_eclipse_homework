/*
 과제
 아래의 형식으로 데이터를 나타내세요.
 1. ename은 현재 연봉은 @@@만원인데, 최근에 10%인상된 금액이며 작년 연봉은 @@@만원이었습니다.
 2. ename의 입사일은 hiredate입니다.
 3. 직책이 @@@인 @@@는 부서번호가 @@@입니다.
 4. @@@님은 현재 연봉과 보너스(comm)의 합산액이 @@@입니다. 
 */
 
 /*
 신기한건.. 제가 마스터가 아닌대도 서로 permit을 줘서 그런지 
 pull request가 마음대로 되요..
 그리고 한글이 안되니깐 그게 짜증날뿐이죠..  these texts are copied from notepad.
 
 
 */
 
 
-- 1. ename은 현재 연봉은 @@@만원인데, 최근에 10%인상된 금액이며 작년 연봉은 @@@만원이었습니다.
 	select ename||'은 현재 연봉은 '||(sal+sal*0.1)||'만원인데, 최근에 10%인상된 금액이며 작년 연봉은 '||sal||'만원이었습니다.' from emp;
-- 2. ename의 입사일은 hiredate입니다.
	select ename||'의 입사일은 '||hiredate||'입니다.' from emp;
-- 3. 직책이 @@@인 @@@는 부서번호가 @@@입니다.
	select '직책이 '||job||'인 '||ename||'은 부서번호가 '||deptno||'입니다.' from emp;	
-- 4. @@@님은 현재 연봉과 보너스(comm)의 합산액이 @@@입니다.
	select ename||'님은 현재 연봉과 보너스('||nvl(comm,0)||')의 합산액이 '||(sal+nvl(comm,0))||'입니다.' from emp;	
