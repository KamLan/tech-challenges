DROP DATABASE IF EXISTS {{ wordpress_db.database }};

CREATE DATABASE {{ wordpress_db.database }};

DROP USER IF EXISTS {{ wordpress_db.username }} ;
flush privileges;
CREATE USER wordpress IDENTIFIED BY "{{ wordpress_db.password }}";

GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP,ALTER
ON {{ wordpress_db.database }}.*
TO {{ wordpress_db.username }};

FLUSH PRIVILEGES;