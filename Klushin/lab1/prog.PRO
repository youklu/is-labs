/*
����������� ��������� ������ ������ �� �����������.
�������� ������: ���� ���� �����, �� ����, ����������, ��� ������� �����, �� ���� � ����������.
���������: ��� ������� �����, �� ����, ��� ������ ������ � �� ����� ��������������.
*/

clauses %���� ������ � ������ 
������(�����,������,4,4). %���� 1
������(�����,�����,2,4). %���� 2
������(����,�����,6,4). % %���� 3
������(����,�����,7,4). %���� 4

������(�����,������,4,1). %���� 5
������(�����,�����,2,1). %���� 6
������(����,������,6,1). %���� 7
������(����,�����,7,1). %���� 8


��������(1,2,_). %���� 9
��������(1,Y,Y2):-not(������(,,Y-1,Y2)),��������(1,Y-1,Y2). %������� 1
��������(2,3,_). %���� 10
��������(2,Y,Y2):-not(������(,,Y-1,Y2)),��������(2,Y-1,Y2). %������� 2
��������(3,4,_). %���� 11
��������(3,Y,Y2):-not(������(,,Y-1,Y2)),��������(3,Y-1,Y2). %������� 3
��������(4,5,_). %���� 12
��������(4,Y,Y2):-not(������(,,Y-1,Y2)),��������(4,Y-1,Y2). %������� 4
��������(5,6,_). %���� 13
��������(5,Y,Y2):-not(������(,,Y-1,Y2)),��������(5,Y-1,Y2). %������� 5
��������(6,7,_). %���� 14
��������(6,Y,Y2):-not(������(,,Y-1,Y2)),��������(6,Y-1,Y2). %������� 6
��������(7,8,_). %���� 15


�����_������(�����,����,X,Y,������,X2):-�����=�����,������(�����,����,X,Y),������(������,����2,X2,Y),����<>����2,
��������(X,X2,Y). %������� 7

�����_�����(�����,����,X,Y,������,X2):-�����=�����,������(�����,����,X,Y),������(������,����2,X2,Y),����<>����2,
��������(X2,X,Y). %������� 8

���_�����(�����,����,X,Y,������):-
�����_������(�����,����,_,Y,������,X);
�����_�����(�����,����,_,Y,������,X). %������� 9

GOAL % ������� ��������
���_�����(�����,����,X,Y,������).


/*
���������
�����=�����, ����=������, X=6, Y=4, ������=����
�����=�����, ����=������, X=2, Y=4, ������=�����
�����=�����, ����=������, X=2, Y=1, ������=�����
3 Solutions
*/
