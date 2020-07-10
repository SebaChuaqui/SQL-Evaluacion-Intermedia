--------------------------------------------------------
-- Archivo creado  - viernes-julio-10-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CALIFICACION
--------------------------------------------------------

  CREATE TABLE "TDIGITAL"."CALIFICACION" 
   (	"ID_PELICULA" VARCHAR2(10 BYTE), 
	"CALIFICACION" VARCHAR2(50 BYTE), 
	"PELICULA_ID_PELICULA" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TDIGITAL.CALIFICACION
SET DEFINE OFF;
Insert into TDIGITAL.CALIFICACION (ID_PELICULA,CALIFICACION,PELICULA_ID_PELICULA) values ('1','mayores18','1');
Insert into TDIGITAL.CALIFICACION (ID_PELICULA,CALIFICACION,PELICULA_ID_PELICULA) values ('2','mayores16','2');
Insert into TDIGITAL.CALIFICACION (ID_PELICULA,CALIFICACION,PELICULA_ID_PELICULA) values ('3','todo publico','3');
--------------------------------------------------------
--  DDL for Index CALIFICACION__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "TDIGITAL"."CALIFICACION__IDX" ON "TDIGITAL"."CALIFICACION" ("PELICULA_ID_PELICULA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CALIFICACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TDIGITAL"."CALIFICACION_PK" ON "TDIGITAL"."CALIFICACION" ("ID_PELICULA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table CALIFICACION
--------------------------------------------------------

  ALTER TABLE "TDIGITAL"."CALIFICACION" ADD CONSTRAINT "CALIFICACION_PK" PRIMARY KEY ("ID_PELICULA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TDIGITAL"."CALIFICACION" MODIFY ("PELICULA_ID_PELICULA" NOT NULL ENABLE);
  ALTER TABLE "TDIGITAL"."CALIFICACION" MODIFY ("ID_PELICULA" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CALIFICACION
--------------------------------------------------------

  ALTER TABLE "TDIGITAL"."CALIFICACION" ADD CONSTRAINT "CALIFICACION_PELICULA_FK" FOREIGN KEY ("PELICULA_ID_PELICULA")
	  REFERENCES "TDIGITAL"."PELICULA" ("ID_PELICULA") ENABLE;
