CREATE PROCEDURE sp_InsertDonation
	@D_ID INT
AS
BEGIN
    INSERT INTO Donations(D_ID)
	VALUES
		(@D_ID)
END
