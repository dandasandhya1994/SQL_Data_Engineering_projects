explain analyse
SELECT
      cdm.name as company_name,
      count(jpf.*) as posting_count
      FROM job_postings_fact as jpf
      LEFT JOIN company_dim as cdm
      ON jpf.company_id = cdm.company_id
      WHERE jpf.job_country = 'United States'
      GROUP BY cd.name;
