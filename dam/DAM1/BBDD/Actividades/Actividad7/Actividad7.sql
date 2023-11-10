-- Utilizamos en LiveSQL de Oracle el Schema 'HR'

-- 1. Procedimiento que localiza a un empleado, modifica su oficio y se visualizan los cambios.

CREATE OR REPLACE PROCEDURE modificar_oficio (empleado_id integer, trabajo_id varchar2) AS
    job_id employees.job_id%TYPE;
	empleado employees%ROWTYPE;
BEGIN
    -- Localizamos al empleado y lo copiamos en la variable 'empleado'.
    SELECT *
    INTO empleado
    FROM employees
    WHERE employee_id = empleado_id;

	-- LLamamos a la función existe_job. Si devuelve true, modificamos la tabla 'employees'
	-- y copiamos la modificación en la variable 'empleado'.
    IF existe_job(trabajo_id) THEN
		UPDATE employees
		SET job_id = trabajo_id
		WHERE employee_id = empleado_id;
		SELECT *
    	INTO empleado
    	FROM employees
    	WHERE employee_id = empleado_id;
		DBMS_OUTPUT.PUT_LINE('Empleado: '||empleado.employee_id||' - Nuevo trabajo: '||empleado.job_id);
	-- Si la función no devuelve true, saldrá el mensaje 'Trabajo no encontrado'.
	ELSE
        DBMS_OUTPUT.PUT_LINE('Trabajo no encontrado');
	END IF;
-- Creamos una excepción para que salte cuando no encuentre el employee_id. 
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	RAISE_APPLICATION_ERROR(-20001,'Empleado no encontrado');
END modificar_oficio;

-- 2. Función que comprueba si el id del oficio existe.

CREATE OR REPLACE FUNCTION existe_job (trabajo_id jobs.job_id%TYPE)
	RETURN BOOLEAN AS
	trabajo jobs.job_id%TYPE;
BEGIN
	SELECT job_id
    INTO trabajo
	FROM jobs
	WHERE trabajo_id = job_id;
	RETURN true;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	RETURN false;
END existe_job;

-- 3. Crear un bloque anónimo donde ejecutar el procedimiento.

DECLARE
	empleado_id employees.employee_id%TYPE;
	trabajo_id employees.job_id%TYPE;
BEGIN
    -- Probamos con un job_id que existe.
	empleado_id := 104;
	trabajo_id := 'FI_ACCOUNT';
	modificar_oficio (empleado_id, trabajo_id);
	-- Probamos con un job_id que no existe.
	empleado_id := 112;
	trabajo_id := 'VENTAS';
	modificar_oficio (empleado_id, trabajo_id);
END;
/

-- Creamos otro bloque anónimo para probar con un employee_id que no existe
-- para así forzar a que salte la excepción creada en el procedimiento.

DECLARE
	empleado_id employees.employee_id%TYPE;
	trabajo_id employees.job_id%TYPE;
BEGIN
	empleado_id := 87;
	trabajo_id := 'IT_PROG';
	modificar_oficio (empleado_id, trabajo_id);
END;
/

-- 4. Crear un trigger que inserte un registro en EMP_AUDIT cuando modifiquemos un salario.

CREATE TABLE EMP_AUDIT (empleado_id number(6,0),fecha timestamp, cambio_salario varchar2(100));

CREATE OR REPLACE TRIGGER audit_modif_salario
    AFTER UPDATE OF salary ON employees
    FOR EACH ROW
    WHEN (old.salary <> new.salary)
BEGIN
    INSERT INTO EMP_AUDIT
    VALUES (:old.employee_id, SYSTIMESTAMP, 'Salario anterior: '||:old.salary||' - Salario modificado: '||:new.salary);
END;

-- Probamos el trigger modificando el salario de un empleado.
UPDATE employees
SET salary = 51000
WHERE employee_id = 107;

-- Comprobamos que la tabla EMP_AUDIT ha registrado la modificación.
SELECT *
FROM EMP_AUDIT;

-- Comprobamos la modificación en la base de datos.
SELECT employee_id, salary
FROM EMPLOYEES
WHERE employee_id = 107;

