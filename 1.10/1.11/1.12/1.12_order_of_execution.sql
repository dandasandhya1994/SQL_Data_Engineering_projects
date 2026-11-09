explain analyse
SELECT
      cd.name as company_name,
      count(jpf.*) as posting_count
      FROM job_postings_fact as jpf
      LEFT JOIN company_dim as cd
      ON jpf.company_id = cd.company_id
      WHERE jpf.job_country = 'United States'
      GROUP BY cd.name;