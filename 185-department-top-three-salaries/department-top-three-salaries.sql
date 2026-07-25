# Write your MySQL query statement below
select d.name as Department,
e.name as Employee,
e.salary as Salary
from(
    select *,
    DENSE_RANK() OVER(
        PARTITION BY departmentId
        ORDER BY salary DESC
    ) as rnk
    FROM Employee
) e
JOIN Department d
on e.departmentId = d.id
WHERE e.rnk <= 3;