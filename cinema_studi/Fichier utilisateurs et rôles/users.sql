
CREATE ROLE IF NOT EXISTS 'app_gest', 'app_write', 'app_read';
GRANT ALL ON theaterDB.* TO 'app_gest';
GRANT SELECT, INSERT, UPDATE, DELETE ON theaterDB.event TO 'app_write';
GRANT SELECT ON theaterDB.* TO 'app_read';

CREATE USER IF NOT EXISTS 'GBadmin' IDENTIFIED BY 'GBadminPassword';
CREATE USER IF NOT EXISTS 'WRadmin' IDENTIFIED BY 'WRadminPassword';
CREATE USER IF NOT EXISTS 'RDadmin' IDENTIFIED BY 'RDadminPassword';

GRANT 'app_gest' TO 'GBadmin';
GRANT 'app_read' TO 'RDadmin';
GRANT 'app_write', 'app_read' TO 'WRadmin';

