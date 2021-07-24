Welcome to my dbt project!

### Using the starter project

- dbt is a tool for how to build with data rather than enforcing what to build

Try running the following commands:
- dbt run
- dbt test

### dbt Learning Notes

# Model naming conventions

- Sources(src) - the raw data that has already been loaded to a WH
- Staging(stg) - 1:1 with source tables. Clean and standardized tables(views)
- Intermediate(int) - models between staging and final models. Always build on staging models
- Facts(fct) - Skinny, long tables of things that are occurring or have occured (events, clicks, votes etc)
- Dimensions(dim) - things that exist, do not change as much for example email for a customer


# Recommended project structure (Example)

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

# Ref Macro

- Use  `{{ ref('REPLACE_WITH_YOUR_MODEL_NAME') )}` to refer to other defined models and resume within current one. 

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
