/*
 과제1. (homework 1) 연봉에 따른 등급체계를 나누려고 한다. decode를 활용해서 
 1000 미만 - F등급				성과급 3%
 1000 이상 ~ 2000 미만 - E등급		성과급 5%
 2000 이상 ~ 3000 미만 - D등급		성과급 7%
 3000 이상 ~ 4000 미만 - C등급		성과급 4%
 4000 이상 ~ 5000 미만 - B등급		성과급 3%
 5000 이상 - A등급				성과급 2%
 
 이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급)
*/	
	select ename 이름, deptno 부서번호, sal 연봉,
		decode(trunc(sal,-3), 0, 'F등급',
							  1000, 'E등급',
							  2000, 'D등급',
							  3000, 'C등급',
							  4000, 'B등급',
							  'A등급') 연봉등급,
							  
		decode(trunc(sal,-3), 1000, 0.05*sal,
							  2000, 0.07*sal,					  						
							  3000, 0.04*sal,					  						
							  4000, 0.03*sal,					  						
							  0.02*sal) 성과급,
							  
		decode(trunc(sal,-3), 1000, 0.05*sal+sal,
							  2000, 0.07*sal+sal,					  						
							  3000, 0.04*sal+sal,					  						
							  4000, 0.03*sal+sal,					  						
							  0.02*sal+sal) "총액(연봉+성과급)"							  					  					  						
	from emp order by 연봉등급;
	

/* 과제2. (homework 2)
 입사분기 기준 표시(1/4, 2/4, 3/4, 4/4) 입사 분기를 표시
 사원번호 이름 입사(년/월), 입사분기
*/	
	select empno 사원번호, ename 이름, to_char(hiredate, 'YYYY"년"/MM"월"') "입사(년/월)",
		case when to_char(hiredate,'MM')<'04' then '1분기'
			 when to_char(hiredate,'MM')<'07' then '2분기'
			 when to_char(hiredate,'MM')<'10' then '3분기'
		 else '4분기'
		end 입사분기 			 	
	from emp order by 입사분기, "입사(년/월)";