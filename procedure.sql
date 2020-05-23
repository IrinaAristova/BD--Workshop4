create or replace PROCEDURE ChangeCountry(athletename IN VARCHAR2, countryname IN VARCHAR2)
IS
    temp VARCHAR2(50);
BEGIN
    SELECT athlete_name INTO temp FROM Athlete WHERE athlete_name = athletename;
    SELECT country_name INTO temp FROM Country WHERE country_name = countryname;
    UPDATE Athlete
    SET country_country_name = countryname
    WHERE athlete_name = athletename;
    DBMS_OUTPUT.PUT_LINE('Change atlete country');
EXCEPTION
    WHEN NO_DATA_FOUND THEN DBMS_OUTPUT.PUT_LINE('Athlete or country not found in database');
END;
