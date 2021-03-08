-- create_table.sql
CREATE TABLE Reports (
	year integer NOT NULL,
	code text NOT NULL,
	state text,
	acronym text,
	population integer,
	violent_crimes integer,
	homicides integer,
	rapes integer,
	assaults integer,
	robberies integer,
	PRIMARY KEY(year, code)
);