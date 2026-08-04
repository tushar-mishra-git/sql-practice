/*
===============================================================================
Platform   : LeetCode
Question   : 595
Title      : Big Countries
Difficulty : Easy

Problem Link
------------
https://leetcode.com/problems/big-countries/

Schema
------
World
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+

Concepts
--------
- SELECT
- WHERE
- OR

===============================================================================
SQL*/

SELECT
    name,
    population,
    area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;

/*
===============================================================================
Pandas*/

import pandas as pd

def big_countries(world: pd.DataFrame) -> pd.DataFrame:
    return world[
        (world["area"] >= 3000000) |
        (world["population"] >= 25000000)
    ][["name", "population", "area"]]