CREATE TABLE auth_user (
  id numeric(11) NOT NULL,
  password varchar(100) DEFAULT NULL,
  last_login date DEFAULT NULL,
  is_superuser numeric(4) DEFAULT NULL,
  username varchar(50) DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  last_name varchar(50) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  is_staff numeric(4) DEFAULT NULL,
  is_active numeric(4) DEFAULT NULL,
  date_joined date DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE isv_bekenntnis (
  id numeric(11) NOT NULL,
  bezeichnung varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE isv_betrieb (
  betriebnr varchar(100) NOT NULL,
  name varchar(100) DEFAULT NULL,
  strasse varchar(100) DEFAULT NULL,
  hausnummer varchar(10) DEFAULT NULL,
  plz varchar(10) DEFAULT NULL,
  ort varchar(50) DEFAULT NULL,
  mobil varchar(50) DEFAULT NULL,
  telefon varchar(50) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  PRIMARY KEY (betriebnr)
);

CREATE TABLE isv_geschlecht (
  bezeichnung varchar(50) NOT NULL,
  fontsymbo varchar(50) DEFAULT NULL,
  anrede_1 varchar(20) DEFAULT NULL,
  anrede_2 varchar(20) DEFAULT NULL,
  PRIMARY KEY (bezeichnung)
);

CREATE TABLE isv_klasse (
  name varchar(50) NOT NULL,
  klassenleitung_id numeric(11) DEFAULT NULL,
  PRIMARY KEY (name),
  CONSTRAINT fk_klassenleitung FOREIGN KEY (klassenleitung_id) REFERENCES auth_user (id)
);

CREATE TABLE isv_schueler (
  lokdiffmerkmal varchar(100) NOT NULL,
  rufname varchar(50) DEFAULT NULL,
  familienname varchar(50) DEFAULT NULL,
  geburtsdatum date DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  strasse varchar(100) DEFAULT NULL,
  hausnummer varchar(20) DEFAULT NULL,
  plz varchar(20) DEFAULT NULL,
  ort varchar(50) DEFAULT NULL,
  telefon varchar(50) DEFAULT NULL,
  aktiv numeric(4) DEFAULT NULL,
  enumericritt date DEFAULT NULL,
  austritt date DEFAULT NULL,
  bekenntnis_id numeric(11) DEFAULT NULL,
  betrieb_id varchar(100) DEFAULT NULL,
  geschlecht_id varchar(50) DEFAULT NULL,
  klasse_id varchar(50) DEFAULT NULL,
  parkausweis_gesperrt numeric(4) DEFAULT NULL,
  parkausweis_verwarnungen numeric(11) DEFAULT NULL,
  PRIMARY KEY (lokdiffmerkmal),
  CONSTRAINT fk_bekenntnis FOREIGN KEY (bekenntnis_id) REFERENCES isv_bekenntnis (id),
  CONSTRAINT fk_betrieb FOREIGN KEY (betrieb_id) REFERENCES isv_betrieb (betriebnr),
  CONSTRAINT fk_geschlecht FOREIGN KEY (geschlecht_id) REFERENCES isv_geschlecht (bezeichnung),
  CONSTRAINT fk_klasse FOREIGN KEY (klasse_id) REFERENCES isv_klasse (name)
);

CREATE TABLE isv_kennzeichen (
  kfz_id numeric(11) NOT NULL,
  lokdiffmerkmal_id varchar(100) DEFAULT NULL,
  kfz_marke varchar(20) DEFAULT NULL,
  kfz_model varchar(20) DEFAULT NULL,
  kfz_ort varchar(10) DEFAULT NULL,
  kfz_erkennungsbuchstaben varchar(10) DEFAULT NULL,
  kfz_erkennungsnummer varchar(10) DEFAULT NULL,
  PRIMARY KEY (kfz_id),
  CONSTRAINT fk_lokdiffmerkmal_kfz FOREIGN KEY (lokdiffmerkmal_id) REFERENCES isv_schueler (lokdiffmerkmal)
);

CREATE TABLE isv_logenumericraege (
  log_id numeric(11) NOT NULL,
  lokdiffmerkmal_id varchar(100) DEFAULT NULL,
  enumericrags_datum date DEFAULT NULL,
  beschreibung varchar(1000) DEFAULT NULL,
  PRIMARY KEY (log_id),
  CONSTRAINT fk_lokdiffmerkmalLog FOREIGN KEY (lokdiffmerkmal_id) REFERENCES isv_schueler (lokdiffmerkmal)
);

CREATE TABLE isv_logins (
  lokdiffmerkmal_id varchar(100) NOT NULL,
  login_server varchar(50) DEFAULT NULL,
  login_mebis varchar(50) DEFAULT NULL,
  login_untis varchar(50) DEFAULT NULL,
  pw_mebis varchar(50) DEFAULT NULL,
  pw_untis varchar(50) DEFAULT NULL,
  export_date date DEFAULT NULL,
  PRIMARY KEY (lokdiffmerkmal_id),
  CONSTRAINT fk_lokdiffmerkmal FOREIGN KEY (lokdiffmerkmal_id) REFERENCES isv_schueler (lokdiffmerkmal)
);

CREATE TABLE isv_parkausweise (
  parkausweis_id numeric(11) NOT NULL,
  gedruckt numeric(4) DEFAULT NULL,
  lokdiffmerkmal_id varchar(100) DEFAULT NULL,
  kfz_id numeric(11) DEFAULT NULL,
  PRIMARY KEY (parkausweis_id),
  CONSTRAINT fk_kennzeichen FOREIGN KEY (kfz_id) REFERENCES isv_kennzeichen (kfz_id),
  CONSTRAINT fk_lokdiffmerkmalParkausweis FOREIGN KEY (lokdiffmerkmal_id) REFERENCES isv_schueler (lokdiffmerkmal)
);


