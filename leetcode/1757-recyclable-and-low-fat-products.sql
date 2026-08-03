/*
===============================================================================
Platform   : LeetCode
Question   : 1757
Title      : Recyclable and Low Fat Products
Difficulty : Easy

Problem Link
------------
https://leetcode.com/problems/recyclable-and-low-fat-products/

Schema
------
Products
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+

Concepts
--------
- SELECT
- WHERE
- AND

===============================================================================
SQL
*/

SELECT
    product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';

/*
  ===============================================================================
PANDAS
*/
import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    df = products[(products['low_fats'] == 'Y') & (products['recyclable'] == 'Y')]

    df = df[['product_id']]
    
    return df