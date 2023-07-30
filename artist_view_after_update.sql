-- Artists Triggers: INSERT

drop trigger "SANTIAGOUSER"."ARTISTS_VIEW_AFTER_UPDATE";

CREATE TRIGGER artists_view_after_update
    INSTEAD OF UPDATE ON artists_view
    FOR EACH ROW
BEGIN
    -- Update First_Names
    
    -- If value exists in association table then...
    
    -- Variabes:
    DECLARE
        ArtistPK     NUMBER;
        First_NamePK NUMBER;
        Row_count    NUMBER;
    BEGIN
        -- Get the Artist Primary Key (Constraint: Artist PK always Exists)
        SELECT artistid INTO ArtistPK
        FROM artists_first_name
        where firstnameid = (select FirstNameID
                             from first_names
                             where first_names.firstname LIKE :OLD.firstname 
                            );
        
        -- Check if the First Name exist
        SELECT COUNT(*) INTO row_count
        FROM first_names
        where firstname LIKE (:NEW.FirstName);
        
        
        -- If it does not exist
        IF Row_count = 0 THEN
            -- Add it to First_Names
            First_NamePK := first_names_ai.nextval;
            INSERT INTO first_names (firstnameid, firstname)
            VALUES(First_NamePK, :NEW.FirstName);
            
            -- Update Arists_First_Name
            UPDATE artists_first_name SET endtime = TRUNC(SYSDATE)WHERE artistid = ArtistPK;
            INSERT INTO Artists_First_Name VALUES (ArtistPK, First_NamePK, TRUNC(SYSDATE),NULL); 
            
        -- If it exists 
        ELSE
        -- Get the Primary Key of First_Name
        SELECT firstnameid INTO First_NamePK
        FROM first_names
        where firstname LIKE (:New.FirstName); --Here is where the swap happens
        
         -- Update Artists_First_Name
        UPDATE artists_first_name SET endtime = TRUNC(SYSDATE) WHERE artistid = ArtistPK;
        INSERT INTO Artists_First_Name VALUES (ArtistPK, First_NamePK, TRUNC(SYSDATE),NULL);
        END IF;
    END;   
END;
