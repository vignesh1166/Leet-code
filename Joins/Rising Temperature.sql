'''
Write a solution to find all dates Id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
The result format is in the following example.
Example 1:
Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+ 
solution'''

SELECT id FROM Weather t1
WHERE temperature > (SELECT temperature FROM Weather t2 WHERE t2.recordDate = DATE_SUB(t1.recordDate, INTERVAL 1 DAY));
