# JOOQ parser errors

This project contains some example code for demonstrating errors in version 3.12 (released on ) of the JOOQ DDLDatabase parser.

These errors have been [reported](https://github.com/jOOQ/jOOQ/issues/9120) and are currently being addressed.
The relevant issues can be found at the following URLs:
- https://github.com/jOOQ/jOOQ/issues/7241
- https://github.com/jOOQ/jOOQ/issues/8846
- https://github.com/jOOQ/jOOQ/issues/9129
- https://github.com/jOOQ/jOOQ/issues/9130
- https://github.com/jOOQ/jOOQ/issues/9131
- https://github.com/jOOQ/jOOQ/issues/9132

## Workarounds

### Don't use the features that the parser can't handle

In some cases this is possible due to features being esoteric or primarily aesthetic or performance related.

### Rewrite the SQL into a format that can be parsed.

ALTER statements can be split, indexes can be created separately.

### Use the special comment feature

The DDLDatabase parser has a special comment feature, see [here](https://github.com/jOOQ/jOOQ/issues/8325). 
This feature allows for annotating SQL with instructions to ignore parts of the SQL.

### Use a preprocessor that removes the parts that aren't understood

You use the original scripts to generate the DB.
The use the reduced script to generate the code.
Worsed case you lose some functionality in your generated code, but your DB is fine.
I've created a project [here](https://github.com/codemonstur/jooqpreprocessor) to do exactly this.

