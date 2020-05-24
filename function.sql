DROP TYPE OLIMP_TABLE;
/
CREATE OR REPLACE TYPE OLIMP_RECORD AS OBJECT( 
CountryName VARCHAR2(50),
OlimpYear NUMBER(4,0),
MedalColor VARCHAR2(15));
/
CREATE OR REPLACE TYPE OLIMP_TABLE AS TABLE OF OLIMP_RECORD;
/
create or replace FUNCTION GetMedals(
CountryName Country.country_name%TYPE,
OlimpYear Olimpiada.olimp_year%TYPE)
RETURN OLIMP_TABLE PIPELINED 
IS
    CURSOR current_cursor IS 
        SELECT 
            Country.country_name,
            Olimpiada.olimp_year,
            Medal.color as medal_color
        FROM
            Country
            INNER JOIN athlete ON country.country_name = athlete.country_name
            INNER JOIN grantmedal ON athlete.athlete_name = grantmedal.athlete_name
            INNER JOIN olimpiada ON olimpiada.olimp_year = grantmedal.olimpiada_year
            INNER JOIN medal ON medal.color = grantmedal.medal_color
        WHERE
            (Country.country_name = CountryName) AND
            (Olimpiada.olimp_year = OlimpYear);
BEGIN
    FOR current_record IN current_cursor 
    LOOP
        PIPE ROW(olimp_record(
            current_record.country_name,
            current_record.olimp_year,
            current_record.medal_color));
    END LOOP;
END;
