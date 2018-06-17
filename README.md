Configure the package to export the classes and the SQLITE script to be ran and be exported to java classes.
After that, call using 
```
./generate.sh
```

For example:

config.properties
```
package="br.josets.jooq"
script="./schema/tasks.sql"
```
and then 
```
./generate.sh
```

That creates the target classes inside the `./target/database`. 
And the file at `./target/database/generated.db` is the sqlite database created using that script.