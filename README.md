# WMS Apex

Warehouse Management System built on Oracle Cloud Infrastructure.

## Tech stack

- **Database**: Oracle Autonomous Database (ADB), accessed via wallet (mTLS)
- **Application logic**: PL/SQL (packages, object types, DBMS_AQ-based
  messaging, DBMS_SCHEDULER jobs)
- **UI**: Oracle APEX
- **Async processing**: Oracle Advanced Queuing (DBMS_AQ/DBMS_AQADM) with
  DBMS_SCHEDULER-driven consumer jobs
- **Logging**: [OraOpenSource Logger](https://github.com/OraOpenSource/Logger)
  (v3.1.1, MIT-licensed), installed in the `WMS_LOG` schema
- **Version control / deployment**: SQLcl Project (Liquibase-based),
  connected via SQLcl in `-thin` (pure JDBC) mode
- **Setup tooling**: PowerShell wrapper scripts (`wms-admin/`,
  `wms-users/`) reading credentials from a gitignored `.env`

See `PROCESS_MAP.md` for how the schemas and processes communicate, and
`CLAUDE.md` for the full set of architecture decisions.

## Acknowledgments

Logging in this project is powered by
[OraOpenSource Logger](https://github.com/OraOpenSource/Logger) — thank you
to its creators and contributors for a great open-source PL/SQL logging
framework.

## More sections coming later

Requirements, installation, and configuration instructions will be added
here as the project matures.
