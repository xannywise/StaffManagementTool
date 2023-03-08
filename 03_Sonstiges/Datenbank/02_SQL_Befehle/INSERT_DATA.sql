--- TABELLE isv_betrieb ---
INSERT INTO isv_betrieb (name, strasse, hausnummer, plz, ort, mobil, telefon, email)
VALUES ('BMW Group', 'Herbert-Quandt-Allee', '1', '93051', 'Regensburg', '+491516060187', '0941187', 'ausbilder.meister@bmw.de'),
        ('Mercedes Benz AG', 'Keinplanstrasse', '7', '18769', 'Schierling', '+4911133242', '05223187', 'ein.mensch@mercedes.de');

--- TABELLE isv_geschlecht ---
INSERT INTO isv_geschlecht (bezeichnung, anrede_1, anrede_2)
VALUES ('weiblich', 'Sehr geehrte', 'Frau'),
	    ('männlich', 'Sehr geehrter', 'Herr'),
	    ('Känguru', 'Sehr geehrtInnen', 'Bruder');