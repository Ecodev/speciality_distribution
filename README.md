**Beware: this PHP package is abandonned**

Speciality Distribution
=======================

Speciality Distribution for TYPO3 CMS.

Please, refer to https://github.com/Ecodev/typo3-cms-speciality-distribution

Generate SQL export
-------------------

There is a utility command for generating a SQL dump ready for the import. 
The command will generate a SQL dump file in EXT:speciality_distribution/ext_tables_static+adt.sql:

```sh
./typo3/cli_dispatch.phpsh extbase distribution:export
```
