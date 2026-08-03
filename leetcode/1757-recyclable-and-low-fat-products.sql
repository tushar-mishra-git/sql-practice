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
*/

SELECT
    product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';