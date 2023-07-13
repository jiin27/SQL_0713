
/* 마당 서점 예제 풀이 "데이터베이스 7-13 pp"t 참조*/

/* 2개 이상의 서로 다른 출판사에서 도서를 구매한 고객의 이름 */
SELECT NAME FROM Customer C1
WHERE (SELECT COUNT(DISTINCT PUBLISHER) FROM Customer, Orders, Book
    WHERE Customer.custid=Orders.custid
    AND Orders.bookid=Book.bookid
    AND (name LIKE c1.name)) >= 2;
    
    
/* 전체 고객의 30% 이상이 구매한 도서 */
SELECT bookname FROM Book b1
    WHERE ((SELECT COUNT(Book.bookid) FROM Book, Orders
        WHERE BOOK.bookid = Orders.bookid AND Book.bookid = b1.bookid)
        >= 0.3 * (SELECT COUNT(*) FROM Customer));
        
/* 기본 테이블과 조인으로 생성한 테이블 간 컬럼을 비교하는 게 포인트 */


