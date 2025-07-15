-- Leet Code 연습 오답
#두 번째 급여 출력하는데, 값이 없으면 null 반환해야 함, 두 번째 부터 출력은 맞았으나 
#이런 형태의 서브쿼리 형식을 못만들어 틀림. 이 형식으로 서브쿼리를 작성해야 해당 값이 없으면 null 출력! 
SELECT 
  (
    SELECT DISTINCT salary 
    FROM employee 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
  ) AS SecondHighestSalary;
  
-- 함수 만들기
create function function_name (parameters)
returns return_type #반환할 데이터 타입
begin 
   -- function body goes here 수행할 쿼리
   return 반환할 값
end;
-- 함수 예제
create function number_add(x int, y int)
returns int
begin 
	declare result int; # 변수 선언 
    set result = x + y;
    return result;
end;

select number_add(5,10); # 실행 
#결과 15

-- 예제 n 번째 높은 급여 받기
create function getNthHighestSalary(N int) returns int
begin 
	declare M int;
    set m = n-1
    return (
		select distinct salary 
        from employee
        order by salary desc
        limit M,1
	);
    end
