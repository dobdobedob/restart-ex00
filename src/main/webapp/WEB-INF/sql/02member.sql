USE test;

CREATE TABLE Member (
	id VARCHAR(30) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);
DESC Member;

ALTER TABLE Member ADD COLUMN inserted DATETIME NOT NULL DEFAULT NOW();

SELECT * FROM Member ORDER BY inserted DESC;

ALTER TABLE Member ADD COLUMN nickName VARCHAR(30); -- 컬럼 추가

UPDATE Member SET nickName = id; -- id 컬럼을 nickName 컬럼으로 추가 (disable safe update)

ALTER TABLE Member MODIFY COLUMN nickName VARCHAR(30) UNIQUE NOT NULL; -- 제약 사항 추가 unique, not null

-- Board 테이블의 작성자 열을 Member 테이블 id값으로 수정
UPDATE Board SET writer = (SELECT id FROM Member ORDER BY inserted DESC LIMIT 1);

SELECT * FROM Board ORDER BY inserted DESC;

-- 게시물 조회, 작성자의 nickName 포함
SELECT 
    b.id,
    b.title,
    b.content,
    b.writer,
    b.inserted,
    b.updated,
    m.nickName
FROM
    Board b
        JOIN
    Member m ON b.writer = m.id
ORDER BY id DESC;

-- Member 조회 with 작성한 게시글 수
SELECT m.id, m.password, m.email, m.address, m.inserted, m.nickName, COUNT(b.id)
FROM Member m LEFT JOIN Board b ON m.id = b.writer
GROUP BY m.id
ORDER BY m.inserted DESC
LIMIT 0, 10 
;
	-- from (0-index), number
    -- page 1 : 0, 10
    -- page 2 : 10, 10
    -- page 3 : 20, 10
    -- page 4 : 30, 10
    -- page 5 : 40, 10
    -- page 6 : 50, 10
    







