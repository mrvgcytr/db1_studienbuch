CREATE PROCEDURE deleteCar
    (aCar_ID cars.car_ID%type )
IS
BEGIN
    DELETE FROM cars
    WHERE car_id = aCar_ID;
END deleteCar;