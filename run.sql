SET SERVEROUTPUT ON;
DECLARE
    Cnt NUMBER(4,0);
BEGIN
    DBMS_OUTPUT.enable;

    DBMS_OUTPUT.put_line('Testing procedure and function:');
    DBMS_OUTPUT.put_line('');
    DBMS_OUTPUT.put_line('Call the procedure to avoid errors.');
    ChangeCountry('LI, Jie', 'China');
    DBMS_OUTPUT.put_line('');
    DBMS_OUTPUT.put_line('Call the function before changing the data.');
    SELECT COUNT(*) INTO Cnt
    FROM TABLE(GetMedals('United States', '2004'));
    DBMS_OUTPUT.put('United States medals in 2004: ');
    DBMS_OUTPUT.put_line(Cnt);
    DBMS_OUTPUT.put_line('');
    
    DBMS_OUTPUT.put_line('Call procedure with the wrong parameters.');
    DBMS_OUTPUT.put_line('Change the country of the athlete LI Jie to the United Kingdom.');
    ChangeCountry('LI, Jie', 'United Kingdom');
    DBMS_OUTPUT.put_line('');
    DBMS_OUTPUT.put_line('Call procedure that changes the country of the athlete.');
    DBMS_OUTPUT.put_line('Change the country of the athlete LI Jie to the United States.');
    ChangeCountry('LI, Jie', 'United States');
    DBMS_OUTPUT.put_line('');
    
    DBMS_OUTPUT.put_line('Call the function after changing the data.');
    SELECT COUNT(*) INTO Cnt
    FROM TABLE(GetMedals('United States', '2004'));
    DBMS_OUTPUT.put('United States medals in 2004: ');
    DBMS_OUTPUT.put_line(Cnt);
END;