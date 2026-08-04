/*
===============================================================================
Platform   : LeetCode
Question   : 1148
Title      : Article Views I
Difficulty : Easy

Problem Link
------------
https://leetcode.com/problems/article-views-i/

Schema
------
Views
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+

Concepts
--------
- SELECT
- DISTINCT
- WHERE
- ORDER BY

===============================================================================
*/

SELECT DISTINCT
    author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;


import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    return (
        views[views["author_id"] == views["viewer_id"]][["author_id"]]
        .drop_duplicates()
        .rename(columns={"author_id": "id"})
        .sort_values("id")
    )