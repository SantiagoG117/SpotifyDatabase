-- Artists Triggers: INSERT
drop trigger "SANTIAGOUSER"."ARTISTS_VIEW_AFTER_INSERT";

CREATE TRIGGER artists_view_after_insert
    INSTEAD OF INSERT ON artists_view
    FOR EACH ROW
BEGIN
    -- Artists
    INSERT INTO artists VALUES(:NEW.ArtistID);
    
    --First_Name
    DECLARE
        FirstNameID NUMBER := first_names_ai.nextval;
    BEGIN
        -- Insert into First_Names
        INSERT INTO First_Names VALUES(FirstNameID, :NEW.FirstName);
        -- Insert into Artists_First_Name
        INSERT INTO Artists_First_Name VALUES (:NEW.ArtistID, FirstNameID, TRUNC(SYSDATE),NULL); 
    END;
    
    --Last_Name
    DECLARE
        LastNameID NUMBER := last_names_AI.nextval;
    BEGIN
        --Insert into First_Names
        INSERT INTO Last_Names VALUES (LastNameID, :NEW.LastName);
        --Insert into Artists_Last_Names
        INSERT INTO artists_last_name VALUES (:NEW.ArtistID, LastNameID, TRUNC(SYSDATE),NULL);
    END;
    
    --City
    DECLARE
        CityID NUMBER := city_AI.nextval;
    BEGIN
        --Insert into Cities
        INSERT INTO cities VALUES(CityID, :NEW.city);
        -- Insert into Artists_City
        INSERT INTO artists_city VALUES(:NEW.ArtistID, CityID,TRUNC(SYSDATE),NULL);
    END;    

    -- Address
    DECLARE
        AddressID NUMBER :=address_AI.nextval;
    BEGIN
        --Insert into Addresses
        INSERT INTO ADDRESSES VALUES(addressid, :NEW.address);
        --Insert into Artists_Addresses
        INSERT INTO artists_address VALUES(:NEW.ArtistID, AddressID,TRUNC(SYSDATE),NULL);
    END;
    
    -- Zip
    DECLARE
        ZipID NUMBER := zip_AI.nextval;
    BEGIN
        --Inset into Zip
        INSERT INTO zip VALUES(ZipID, :NEW.Zip_code);
        -- Insert into Artists_Zip
        INSERT INTO artists_address VALUES(:NEW.ArtistID, ZipID,TRUNC(SYSDATE),NULL);
    END;
END;

