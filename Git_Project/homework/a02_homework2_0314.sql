/*
 ��������
 1. EMP�߿� ������ 2000�̸��� �Ǵ� ��� ���� �߿� �����ȣ�� ������ ����϶�.
 2. ������ ���ʽ��� �ջ� �ݾ��� 1500�̸��� ����� �̸�, ����, ���ʽ�, �ջ���� ����϶�.
 3. mgr�� NULL�� ����� job�� �̸�, ������ ����ϼ���.
 4. job�� CLERK�� ��� �� deptno�� 30�� ����� �̸�, ��å, �μ���ȣ�� �Է��ϼ���.
 5. ������ 2000���� 3000���̿� �ִ� ����� �μ���ȣ, �̸�, ������ ����ϼ���.
*/	

-- 1. EMP�߿� ������ 2000�̸��� �Ǵ� ��� ���� �߿� �����ȣ�� ������ ����϶�.
	select * from emp;
	select empno "�����ȣ", sal "����" from emp where sal<2000;

-- 2. ������ ���ʽ��� �ջ� �ݾ��� 1500�̸��� ����� �̸�, ����, ���ʽ�, �ջ���� ����϶�.	
	select * from emp;
	select ename "�̸�", sal "����", nvl(comm,0) "���ʽ�", (sal+nvl(comm,0)) "�ջ��" from emp where (sal+nvl(comm,0))<1500;

-- 3. mgr�� NULL�� ����� job�� �̸�, ������ ����ϼ���.
	select * from emp;
	select job "��å", ename	"�̸�", sal "����" from emp where mgr is null;

-- 4. job�� CLERK�� ��� �� deptno�� 30�� ����� �̸�, ��å, �μ���ȣ�� �Է��ϼ���.	
	select * from emp;
	select ename "�̸�", job "��å", deptno "�μ���ȣ" from emp where job='CLERK' and deptno=30;

-- 5. ������ 2000���� 3000���̿� �ִ� ����� �μ���ȣ, �̸�, ������ ����ϼ���.
	select * from emp;
	select deptno "�μ���ȣ", ename "�̸�", sal "����" from emp where sal>=2000 and sal<=3000;