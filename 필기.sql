-- 기초 함수 및 수식
=
!=  or <>
like # 대소문자 구분하지 않는 정확한 문자열 비교
not like
% # like, not like 과 함께 사용. 0개 혹은 여러 문자에 사용 col_name like %AT% == 'AT','ATTIC',"CAT" 와 일치
_ # like,not like 와 함께 사용. 한 단어용 col_name like "AN_" =="AND" !="AN"
col in(1,2,3) / col not in(1,2,3)
-- 
offset # 어디서부터 가져올 것 인지 
select * from movies
order by title 
limit 5 offset 5; # 5번째 이후 행 부터 5줄 불러오기
-- 
abs(숫자) # 절대값 함수

-- Create Table
primary key #기본 키. 데이터베이스에서 측정 레코드를 유일하게 식별하기 위해 사용되는 필드 (unique+not null)
# 특징: 각 레코드에 대해 고유하다. null 값이 허용 안됨. 레코드를 식별하는 데 사용, 테이블당 하나의 기본키만 지정 가능
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER, 
    length_minutes INTEGER
);

unique #중복된 값을 허용하지 않음
foreign key #다른 테이블의 primary key 값을 참조
check #컬럼에 저장되는 값이 특정 조건을 만족해야 함. 
default #값을 입력하지 않을 때 자동으로 지정되는 기본 값

-- Altering Tables
alter table 
ALTER TABLE mytable
ADD column DataType OptionalTableConstraint 
    DEFAULT default_value;
    
ALTER TABLE mytable
DROP column_to_be_deleted;

ALTER TABLE mytable
RENAME TO new_table_name;
-- 
char(10) # 글자 크기가 고정이 된 것은 이거로 (3글자를 적어도 10자리 차지. 속도는 더 빠름)
varchar(10) # 글자 크기가 가변적이면 이거로 (10까지가 최대치이지만, 글을 적게 쓰면 적은 만큼만 자리 차지)