<cfscript>

writeOutput( "<h1>CFTransaction Error Reproduction</h1>" );

dsnUsername = "";
dsnPassword = "";
dsn = "myDsn";

transaction {

    q1 = queryExecute( 
        "SELECT * FROM [users]",
        {}
    );

    q2 = queryExecute( 
        "SELECT * FROM [users]",
        {},
        {
            datasource   = "#dsn#",
            username    = dsnUsername,
            password    = dsnPassword
        } 
    );

}

writeOutput( "Success!" );
</cfscript>