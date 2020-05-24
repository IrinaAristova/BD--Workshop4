CREATE OR REPLACE PACKAGE Olimpiada_package IS

    TYPE OLIMP_RECORD IS RECORD(CountryName VARCHAR2(50), OlimpYear NUMBER(4,0), MedalColor VARCHAR2(15));
    
    TYPE OLIMP_TABLE IS TABLE OF OLIMP_RECORD;
    
    PROCEDURE ChangeCountry(athletename IN VARCHAR2, countryname IN VARCHAR2);
        
    FUNCTION GetMedals(CountryName Country.country_name%TYPE,OlimpYear Olimpiada.olimp_year%TYPE)
    
    RETURN OLIMP_TABLE
    PIPELINED;      
END Olimpiada_package;   
/    
CREATE OR REPLACE PACKAGE BODY Olimpiada_package IS

    PROCEDURE ChangeCountry(athletename IN VARCHAR2, countryname IN VARCHAR2)
        IS
            temp VARCHAR2(50);
        BEGIN
            DBMS_OUTPUT.enable;
            SELECT athlete_name INTO temp FROM Athlete WHERE athlete_name = athletename;
            SELECT country_name INTO temp FROM Country WHERE country_name = countryname;
            UPDATE Athlete
            SET country_name = countryname
            WHERE athlete_name = athletename;
            DBMS_OUTPUT.PUT_LINE('Change atlete country');
        EXCEPTION
            WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Athlete or country not found in database');
        END;
    
    FUNCTION GetMedals(CountryName Country.country_name%TYPE, OlimpYear Olimpiada.olimp_year%TYPE)
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
                    PIPE ROW(current_record);
                END LOOP;
            END;
        
END Olimpiada_package;
