/*
 연습예제
 1. EMP중에 연봉이 2000미만이 되는 사원 정보 중에 사원번호와 연봉을 출력하라.
 2. 연봉과 보너스의 합산 금액이 1500미만인 사람의 이름, 연봉, 보너스, 합산액을 출력하라.
 3. mgr이 NULL인 사람의 job과 이름, 연봉을 출력하세요.
 4. job이 CLERK인 사람 중 deptno가 30인 사람의 이름, 직책, 부서번호를 입력하세요.
 5. 연봉이 2000에서 3000사이에 있는 사람의 부서번호, 이름, 연봉을 출력하세요.
*/	

-- 1. EMP중에 연봉이 2000미만이 되는 사원 정보 중에 사원번호와 연봉을 출력하라.
	select * from emp;
	select empno "사원번호", sal "연봉" from emp where sal<2000;

-- 2. 연봉과 보너스의 합산 금액이 1500미만인 사람의 이름, 연봉, 보너스, 합산액을 출력하라.	
	select * from emp;
	select ename "이름", sal "연봉", nvl(comm,0) "보너스", (sal+nvl(comm,0)) "합산액" from emp where (sal+nvl(comm,0))<1500;

-- 3. mgr이 NULL인 사람의 job과 이름, 연봉을 출력하세요.
	select * from emp;
	select job "직책", ename	"이름", sal "연봉" from emp where mgr is null;

-- 4. job이 CLERK인 사람 중 deptno가 30인 사람의 이름, 직책, 부서번호를 입력하세요.	
	select * from emp;
	select ename "이름", job "직책", deptno "부서번호" from emp where job='CLERK' and deptno=30;

-- 5. 연봉이 2000에서 3000사이에 있는 사람의 부서번호, 이름, 연봉을 출력하세요.
	select * from emp;
	select deptno "부서번호", ename "이름", sal "연봉" from emp where sal>=2000 and sal<=3000;