-- Database: "MRH_EPDB"

-- DROP DATABASE "MRH_EPDB";

CREATE DATABASE "MRH_EPDB"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English_United Kingdom.1252'
       LC_CTYPE = 'English_United Kingdom.1252'
       CONNECTION LIMIT = -1;



CREATE USER mike WITH PASSWORD 'camel_user';
GRANT ALL PRIVILEGES ON DATABASE MRH_EPDB to mike;

-- Table: journal

-- DROP TABLE journal;

CREATE TABLE journal
(
  journal_id serial NOT NULL,
  journal_datetime time without time zone NOT NULL,
  site_id integer NOT NULL,
  site_name character varying(50) NOT NULL,
  commission_operatorid integer NOT NULL,
  commission_operator character varying(50) NOT NULL,
  item_id integer NOT NULL,
  item_name character varying(50) NOT NULL,
  item_price numeric NOT NULL,
  item_quantity numeric NOT NULL,
  CONSTRAINT journal_pkey PRIMARY KEY (journal_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE journal
  OWNER TO postgres;
GRANT ALL ON TABLE journal TO postgres;
GRANT ALL ON TABLE journal TO mike;
