
/* ���� ���� ���� Ǯ�� "�����ͺ��̽� 7-13 pp"t ����*/

/* 2�� �̻��� ���� �ٸ� ���ǻ翡�� ������ ������ ���� �̸� */
SELECT NAME FROM Customer C1
WHERE (SELECT COUNT(DISTINCT PUBLISHER) FROM Customer, Orders, Book
    WHERE Customer.custid=Orders.custid
    AND Orders.bookid=Book.bookid
    AND (name LIKE c1.name)) >= 2;
    
    
/* ��ü ���� 30% �̻��� ������ ���� */
SELECT bookname FROM Book b1
    WHERE ((SELECT COUNT(Book.bookid) FROM Book, Orders
        WHERE BOOK.bookid = Orders.bookid AND Book.bookid = b1.bookid)
        >= 0.3 * (SELECT COUNT(*) FROM Customer));
        
/* �⺻ ���̺�� �������� ������ ���̺� �� �÷��� ���ϴ� �� ����Ʈ */


