
        SELECT
           *
    FROM
        eims.output_chlorophyll
    WHERE
        chla notnull
        and phaeo notnull
        and (chla_flag is null or chla_flag not in ('SVD'))



