-- 0) DB
DROP DATABASE IF EXISTS MVACADEMY;
CREATE DATABASE MVACADEMY;
USE MVACADEMY;


CREATE TABLE major (
                       major_code VARCHAR(100) PRIMARY KEY,
                       major_name VARCHAR(100) NOT NULL,
                       tutor_name VARCHAR(100) NOT NULL
);

CREATE TABLE student (
                         student_code VARCHAR(100) PRIMARY KEY,
                         name VARCHAR(100) NOT NULL,
                         birth VARCHAR(8) NOT NULL,
                         gender VARCHAR(1) NOT NULL,
                         phone VARCHAR(11) NOT NULL,
                         major_code VARCHAR(100) NOT NULL,
                         FOREIGN KEY (major_code) REFERENCES major(major_code)
);

CREATE TABLE exam (
                      student_code VARCHAR(100) NOT NULL,
                      exam_seq INT NOT NULL,
                      score DECIMAL(10, 2) NOT NULL,
                      result VARCHAR(1) NOT NULL,
                      PRIMARY KEY (student_code, exam_seq),
                      CONSTRAINT exam_fk_student_code
                          FOREIGN KEY (student_code)
                              REFERENCES student(student_code)
);

SHOW TABLES;


INSERT INTO major (major_code, major_name, tutor_name) VALUES
                                                           ('m1', '스프링', '남병관'),
                                                           ('m2', '노드', '이차차'),
                                                           ('m3', '플라스크', '홍길동'),
                                                           ('m4', '루비온레일즈', '으하하'),
                                                           ('m5', '라라벨', '오승혁'),
                                                           ('m6', '뷰', '김성실'),
                                                           ('m7', '앵귤러', '남개그'),
                                                           ('m8', '리액트', '임시튜터');

SELECT major_code FROM major ORDER BY major_code;


INSERT INTO student (student_code, name, birth, gender, phone, major_code) VALUES
                                                                               ('s1', '최원빈', '20100101', 'M', '01001010101', 'm1'),
                                                                               ('s2', '강준규', '20220501', 'M', '01000000002', 'm1'),
                                                                               ('s3', '김영철', '20220711', 'M', '01000000003', 'm1'),

                                                                               ('s4', '예상기', '20220408', 'M', '01000000004', 'm6'),
                                                                               ('s5', '안지현', '20220921', 'F', '01000000005', 'm6'),
                                                                               ('s6', '이대호', '20221111', 'M', '01000000006', 'm7'),

                                                                               ('s7', '정주혜', '20221117', 'F', '01000000007', 'm8'),
                                                                               ('s8', '고미송', '20220623', 'F', '01000000008', 'm6'),
                                                                               ('s9', '이용우', '20220511', 'M', '01000000009', 'm2'),
                                                                               ('s10', '심선아', '20220504', 'F', '01000000010', 'm8'),
                                                                               ('s11', '변정섭', '20220222', 'M', '01000000020', 'm2'),

                                                                               ('s12', '정오빈', '20010101', 'M', '0106898799', 'm3'),
                                                                               ('s13', '김가은', '20220121', 'F', '01000000030', 'm1'),
                                                                               ('s14', '김동현', '20030202', 'M', '01000000020', 'm4'),
                                                                               ('s15', '박은진', '20221101', 'F', '0100010101', 'm3'),
                                                                               ('s16', '정영호', '20221105', 'M', '01000000050', 'm5'),
                                                                               ('s17', '박가현', '20030202', 'F', '01000000020', 'm7'),
                                                                               ('s18', '박용태', '20220508', 'M', '01000000060', 'm6'),
                                                                               ('s19', '김예지', '20220505', 'F', '01000000070', 'm2'),
                                                                               ('s20', '윤지용', '20220909', 'M', '01000000080', 'm3'),
                                                                               ('s21', '손윤주', '20220303', 'F', '01000000090', 'm6');

SELECT * FROM student;


INSERT INTO exam VALUES
                     ('s1', 1, 8.5, 'P'),
                     ('s1', 2, 9.5, 'P'),
                     ('s1', 3, 3.5, 'F'),
                     ('s2', 1, 8.2, 'P'),
                     ('s2', 2, 9.5, 'P'),
                     ('s2', 3, 7.5, 'P'),
                     ('s3', 1, 9.3, 'P'),
                     ('s3', 2, 5.3, 'F'),
                     ('s3', 3, 9.9, 'P'),
                     ('s4', 1, 8.4, 'P'),
                     ('s5', 1, 9.5, 'P'),
                     ('s5', 2, 3.5, 'F'),
                     ('s6', 1, 8.3, 'P'),
                     ('s7', 1, 9.2, 'P'),
                     ('s7', 2, 9.9, 'P'),
                     ('s7', 3, 3.6, 'F'),
                     ('s8', 1, 8.4, 'P'),
                     ('s9', 1, 9.7, 'P'),
                     ('s10', 1, 8.4, 'P'),
                     ('s10', 2, 9.8, 'P'),
                     ('s10', 3, 8.4, 'P'),
                     ('s11', 1, 8.6, 'P'),
                     ('s12', 1, 9.2, 'P'),
                     ('s13', 1, 8.1, 'P'),
                     ('s13', 2, 9.5, 'P'),
                     ('s13', 3, 2.1, 'F'),
                     ('s14', 1, 9.2, 'P'),
                     ('s15', 1, 9.7, 'P'),
                     ('s15', 2, 1.7, 'F'),
                     ('s16', 1, 8.4, 'P'),
                     ('s17', 1, 9.3, 'P'),
                     ('s17', 2, 9.9, 'P'),
                     ('s17', 3, 1.3, 'F'),
                     ('s18', 1, 9.9, 'P'),
                     ('s19', 1, 9.4, 'P'),
                     ('s19', 2, 8.9, 'P'),
                     ('s19', 3, 7.4, 'F'),
                     ('s20', 1, 8.1, 'P');

SELECT * FROM student;

insert into student values('s0', '안될애', '20202020', 'M', '01092922929', 'm1');
update student set major_code = 'm2' where student_code = 's0';

select * from student where student_code = 's1';

delete from student where student_code = 's0';

select * from student;

select name, major_code from student where student_code = 's1';

show tables;
desc exam;

# JOIN 사용
-- 명시적 조인
-- JOIN 키워드를 사용하여, 두 테이블을 조인한다.
-- ON 절을 사용하여 조인 조건을 지정한다.
-- 가독성이 좋고, 복잡한 조인 조건을 명확하게 표현할 수 있기 떄문,
-- INNER JON, LEFT JOIN, RIGHT JOIN 등 다양한 조인 방식을 사용 할 수 있다. (기본은 INNER = 교집합)

select s.name, s.major_code, m.major_name
from student s  -- alias가 축약되어 있음
         join major m
              on s.major_code = m.major_code;

-- 암시적 조인(권장x)
-- 테이브들을, 콤마로 나열..
-- WHERE을 사용해서 조인 조건 설정을 함.
-- 간단하고, 코드가짧고, 빠르게 작성 가능.. 하지만 복잡해지면 가독성이 떨어진다. 다양한 조인 방식을 사용할 수 없다.

select s.name, s.major_code, m.major_name
from student s, major m
where s.major_code = m.major_code;

# 주소
# 학교홈 vs 쿠팡
# "조치원읍 210번길 213-2"
# "조치원읍", "210번길", "213", "2", addr1, addr2, street, postalcode,