Welcome to my dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test

### dbt Learning Notes

#Model naming conventions

- Sources - the raw dara that has already been loaded to a WH
- Staging - 1:1 with source tables. Clean and standardized tables(views)
- Intermediate - models between staging and final models. Always build on staging models
- Facts - Skinny, long tables of things that are occurring or have occured (events, clicks, votes etc)
- Dimensions - things that exist, do not change as much for example email for a customer


# Recommended folder structure (Example)

```
dbt-learn
├── analysis
├── dbt_modules
├── logs
├── macros
├── models
    └── marts
        └── core
            └── dim_customers.sql
        └── finance
        └── hr
        └── marketing
        └── businessunit_or_domain_etc  
    └── staging
        └── jaffle_Shop
            ├── stg_customers.sql
            └── stg_orders.sql 
├── snapshots
├── target
├── tests
├── .gitignore
├── dbt_project.yml
└── README.md
```


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
