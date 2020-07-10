--------------------------------------------------------
-- Archivo creado  - viernes-julio-10-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PROMOCION
--------------------------------------------------------

  CREATE TABLE "TDIGITAL"."PROMOCION" 
   (	"ID_FUNCION" VARCHAR2(10 BYTE), 
	"DESCRIPCION" VARCHAR2(100 BYTE), 
	"DESCUENTO" VARCHAR2(50 BYTE), 
	"FUNCION_ID_PELICULA" VARCHAR2(10 BYTE), 
	"FUNCION_ID_FUNCION" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into TDIGITAL.PROMOCION
SET DEFINE OFF;
Insert into TDIGITAL.PROMOCION (ID_FUNCION,DESCRIPCION,DESCUENTO,FUNCION_ID_PELICULA,FUNCION_ID_FUNCION) values ('F1','funcion1','10','1','F1');
Insert into TDIGITAL.PROMOCION (ID_FUNCION,DESCRIPCION,DESCUENTO,FUNCION_ID_PELICULA,FUNCION_ID_FUNCION) values ('F2','funcion2','12','2','F2');
Insert into TDIGITAL.PROMOCION (ID_FUNCION,DESCRIPCION,DESCUENTO,FUNCION_ID_PELICULA,FUNCION_ID_FUNCION) values ('F3','funcion3','20','3','F3');
--------------------------------------------------------
--  DDL for Index PROMOCION__IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "TDIGITAL"."PROMOCION__IDX" ON "TDIGITAL"."PROMOCION" ("FUNCION_ID_PELICULA", "FUNCION_ID_FUNCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PROMOCION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TDIGITAL"."PROMOCION_PK" ON "TDIGITAL"."PROMOCION" ("ID_FUNCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PROMOCION
--------------------------------------------------------

  ALTER TABLE "TDIGITAL"."PROMOCION" ADD CONSTRAINT "PROMOCION_PK" PRIMARY KEY ("ID_FUNCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "TDIGITAL"."PROMOCION" MODIFY ("FUNCION_ID_FUNCION" NOT NULL ENABLE);
  ALTER TABLE "TDIGITAL"."PROMOCION" MODIFY ("FUNCION_ID_PELICULA" NOT NULL ENABLE);
  ALTER TABLE "TDIGITAL"."PROMOCION" MODIFY ("ID_FUNCION" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PROMOCION
--------------------------------------------------------

  ALTER TABLE "TDIGITAL"."PROMOCION" ADD CONSTRAINT "PROMOCION_FUNCION_FK" FOREIGN KEY ("FUNCION_ID_PELICULA", "FUNCION_ID_FUNCION")
	  REFERENCES "TDIGITAL"."FUNCION" ("ID_PELICULA", "ID_FUNCION") ENABLE;
