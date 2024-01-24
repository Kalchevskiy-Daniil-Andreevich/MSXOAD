CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_LIST_OF_CLIENTS(pSURNAME_CLIENT NVARCHAR2, pNAME_CLIENT NVARCHAR2, pPATRONYMIC_CLIENT NVARCHAR2, pAGE_CLIENT NUMBER, pADDRESS_CLIENT NVARCHAR2, pTELEPHONE_CLIENT NVARCHAR2, pPASSPORT_CLIENT NVARCHAR2)
IS
BEGIN
        INSERT INTO LISOFCLI(SURNAME_CLIENT, NAME_CLIENT, PATRONYMIC_CLIENT, AGE_CLIENT, ADDRESS_CLIENT, TELEPHONE_CLIENT, PASSPORT_CLIENT)
        VALUES(pSURNAME_CLIENT, pNAME_CLIENT, pPATRONYMIC_CLIENT, pAGE_CLIENT, pADDRESS_CLIENT, pTELEPHONE_CLIENT, pPASSPORT_CLIENT);
        EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

DECLARE
    CHOICE NUMBER;
    POP NUMBER;
BEGIN
    FOR COUNTER IN 1..40000
    LOOP
        SELECT DBMS_RANDOM.VALUE(18, 70) NUM INTO POP FROM DUAL;
        POP := ROUND(POP);
        SELECT DBMS_RANDOM.VALUE(1, 10) NUM INTO CHOICE FROM DUAL;
        CHOICE := ROUND(CHOICE);
        IF(CHOICE > 5)
        THEN 
            ADD_ROWS_TO_LIST_OF_CLIENTS(FUNC_SURNAME_MEN, FUNC_NAME_MEN, FUNC_PATRONYMIC_MEN, POP, RAND_ADDRESS, RAND_PHONE_NUMBER, RPASSPORT);
        ELSE
            ADD_ROWS_TO_LIST_OF_CLIENTS(FUNC_SURNAME_WOMEN, FUNC_NAME_WOMEN, FUNC_PATRONYMIC_WOMEN, POP, RAND_ADDRESS, RAND_PHONE_NUMBER, RPASSPORT);
        END IF;
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the LIST_OF_CLIENTS table.');
END;



CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_ABONEMENTS(pTYPE_OF_TRAINING NVARCHAR2, pTYPE_OF_SERVICE NVARCHAR2, pPRICE NUMBER, pAMOUNT_OF_VISITS NUMBER, pAMOUNT_OF_DAYS NUMBER, 
pAMOUNT_OF_MONTHS NUMBER)
IS
BEGIN
        INSERT INTO ABONM(TYPE_OF_TRAINING, TYPE_OF_SERVICE, PRICE, AMOUNT_OF_VISITS, AMOUNT_OF_DAYS, AMOUNT_OF_MONTHS)
        VALUES(pTYPE_OF_TRAINING, pTYPE_OF_SERVICE, pPRICE, pAMOUNT_OF_VISITS, pAMOUNT_OF_DAYS, pAMOUNT_OF_MONTHS);
         EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN  1..40000
    LOOP
        ADD_ROWS_TO_ABONEMENTS(RAND_TYPE_TRAINING, RAND_TYPE_SERVICES, RPRICE, AMOUNTVISIT, AMOUNTDAYS, AMOUNTMONTHS);
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the ABONEMENTS table.');    
END;



CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_SALE_OF_ABONEMENTS(pIDCLIENT NUMBER, pIDABONEMENT NUMBER, pDATABEGIN DATE, pDATAEND DATE)
IS
BEGIN
    INSERT INTO SALOFABONM(ID_CLIENT, ID_ABONEMENT, DATA_BEGIN, DATA_END)
    VALUES (pIDCLIENT, pIDABONEMENT, pDATABEGIN, pDATAEND);
    EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN 1..40000
    LOOP
        ADD_ROWS_TO_SALE_OF_ABONEMENTS(ID_CLIENTS, ID_ABONEMENTS, RTIME('01-05-2023', '31-05-2023'), RTIME('01-09-2023', '30-09-2023'));
    END LOOP;
        EXCEPTION
           WHEN OTHERS THEN
             DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
               RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the SALE_OF_ABONEMENTS table.');     
END;



CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_INFO_COMPLEXES(pNAME_COMPLEXES NVARCHAR2, pADDRESS_COMPLEXES NVARCHAR2, pCAPACITY_COMPLEXES NUMBER)
IS
BEGIN
    INSERT INTO INFCOMPL(NAME_COMPLEXES, ADDRESS_COMPLEXES, CAPACITY_COMPLEXES)
    VALUES(pNAME_COMPLEXES, pADDRESS_COMPLEXES, pCAPACITY_COMPLEXES);
    EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN 1..100
    LOOP
        ADD_ROWS_TO_INFO_COMPLEXES(RAND_NAME_COMPLEX, RAND_ADDRESS, CAPACITY_C);
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the INFO_COMPLEXES table.');     
END;



CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_VISIT_RECORD(pID_SALE NUMBER, pNUMBER_RECORD NUMBER, pCOMPLEXES_ID NUMBER)
IS
BEGIN
    INSERT INTO VISREC(ID_SALE, NUMBER_RECORD, ID_COMPLEXES)
    VALUES (pID_SALE, pNUMBER_RECORD, pCOMPLEXES_ID);
    EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN 1..40000
    LOOP
        ADD_ROWS_TO_VISIT_RECORD(ID_SALE, NUMBER_RECORD, ID_COMPLEXES);
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE|| 'ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the VISIT_RECORD table.');      
END;

COMMIT;

CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_TIME_TABLE(pDATA_TIME_TABLE DATE, pTIME_BEGIN NVARCHAR2, pTIME_END NVARCHAR2, pID_EMPLOYEE NUMBER, pID_SERVICES NUMBER, pID_TRAINING NUMBER)
IS
BEGIN
    INSERT INTO TIMTAB(DATA_TIME_TABLE, TIME_BEGIN, TIME_END, ID_EMPLOYEE, ID_SERVICES, ID_TRAINING)
    VALUES (pDATA_TIME_TABLE, pTIME_BEGIN, pTIME_END, pID_EMPLOYEE, pID_SERVICES, pID_TRAINING);
         EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN 1..100
    LOOP
        ADD_ROWS_TO_TIME_TABLE(RTIME('01-06-2023', '31-08-2023'), RAND_TIME_BEGIN, RAND_TIME_END, ID_EMPLOYEE, ID_SERVICES, ID_TRAINING);
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the TIME_TABLE table.');     
END;



CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_LIST_OF_SERVICES(pTYPES_OF_SERVICES NVARCHAR2)
IS
BEGIN
    INSERT INTO LISOFSERV(TYPES_OF_SERVICES)
    VALUES(pTYPES_OF_SERVICES);
     EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN 1..80
    LOOP
        ADD_ROWS_TO_LIST_OF_SERVICES(RAND_TYPE_SERVICES);
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the LIST_OF_SERVICES table.');       
END;



CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_TYPES_OF_TRAINING(pTYPES_OF_TRAINING NVARCHAR2)
IS
BEGIN
    INSERT INTO TYPOFTRA(TYPES_OF_TRAINING)
    VALUES(pTYPES_OF_TRAINING);
         EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

BEGIN
    FOR COUNTER IN 1..100
    LOOP
        ADD_ROWS_TO_TYPES_OF_TRAINING(RAND_TYPE_TRAINING);
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the TYPES_OF_TRAINING table.');      
END;


    
CREATE OR REPLACE PROCEDURE ADD_ROWS_TO_LIST_OF_EMPLOYEE(pSURNAME_EMPLOYEE NVARCHAR2, pNAME_EMPLOYEE NVARCHAR2, pPATRONYMIC_EMPLOYEE NVARCHAR2, pTELEPHONE_EMPLOYEE NVARCHAR2, pADDRESS_EMPLOYEE NVARCHAR2, pSALARY_EMPLOYEE NUMBER)
IS
BEGIN
    INSERT INTO LISOFEMP(SURNAME_EMPLOYEE, NAME_EMPLOYEE, PATRONYMIC_EMPLOYEE, TELEPHONE_EMPLOYEE, ADDRESS_EMPLOYEE, SALARY_EMPLOYEE)
    VALUES(pSURNAME_EMPLOYEE, pNAME_EMPLOYEE, pPATRONYMIC_EMPLOYEE, pTELEPHONE_EMPLOYEE, pADDRESS_EMPLOYEE, pSALARY_EMPLOYEE);
    EXCEPTION
            WHEN OTHERS
                THEN DBMS_OUTPUT.PUT_LINE('CODE ERROR: '||SQLCODE||' MESSAGE: '||SQLERRM);
END;

DECLARE
    CHOICE NUMBER;
BEGIN
    FOR COUNTER IN 1..100
    LOOP
        SELECT DBMS_RANDOM.VALUE(1, 10) NUM INTO CHOICE FROM DUAL;
        CHOICE := ROUND(CHOICE);
        IF(CHOICE > 5)
        THEN 
            ADD_ROWS_TO_LIST_OF_EMPLOYEE(FUNC_SURNAME_MEN, FUNC_NAME_MEN, FUNC_PATRONYMIC_MEN, RAND_PHONE_NUMBER, RAND_ADDRESS, RSALARY);
        ELSE
           ADD_ROWS_TO_LIST_OF_EMPLOYEE(FUNC_SURNAME_MEN, FUNC_NAME_MEN, FUNC_PATRONYMIC_MEN, RAND_PHONE_NUMBER, RAND_ADDRESS, RSALARY);
        END IF;
    END LOOP;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR: ' || SQLERRM);
            RAISE_APPLICATION_ERROR(-20001, 'An error occurred while adding rows to the LIST_OF_EMPLOYEE table.');   
END;