# ReadMe

## To reproduce the issue:

### Setup:
1. Edit .env file and populate fields with your actual DSN configuration information
2. Edit application.cfc and change `this.datasource` from `myDsn` to whatever DSN you will be using.
3. Edit index.cfm and change `dsn = "myDsn";` to the same DSN you used in step 2.
4. Change the table name `[users]` to any table that exists in your DSN

### Run in ACF 2018: (issue also impacts 2021)
1. At the command prompt start Commandbox
2. Type `server start cfengine=adobe@2018`
3. Open a browser to index.cfm and note the error message:
4. Stop the server with the command `server stop`

### Run in Lucee:
1. At the command prompt start Commandbox
2. Type `server start cfengine=lucee@2018`
3. Open a browser to index.cfm and note the process **completes with no error**!
4. Stop the server with the command `server stop`