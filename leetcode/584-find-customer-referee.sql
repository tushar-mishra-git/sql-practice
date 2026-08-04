/*
===============================================================================
Platform   : LeetCode
Question   : 584
Title      : Find Customer Referee
Difficulty : Easy

Problem Link
------------
https://leetcode.com/problems/find-customer-referee/

Schema
------
Customer
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+

Concepts
--------
- SELECT
- WHERE
- NULL Handling
- OR

===============================================================================
SQL
*/

SELECT
    name
FROM Customer
WHERE referee_id != 2
   OR referee_id IS NULL;

/*
Pandas
===============================================================================
*/
import pandas as pd

def find_customer_referee(customer: pd.DataFrame) -> pd.DataFrame:
    return customer[
        (customer["referee_id"] != 2) |
        (customer["referee_id"].isna())
    ][["name"]]                 