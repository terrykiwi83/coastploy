CREATE TABLE "Customers" (
	"CustID" serial NOT NULL,
	"CustFirstName" VARCHAR(255) NOT NULL,
	"CustSurname" VARCHAR(255) NOT NULL,
	"CustStreet" VARCHAR(255) NOT NULL,
	"CustDistrict" VARCHAR(255) NOT NULL,
	"CustTown" VARCHAR(255) NOT NULL,
	"CustCountry" VARCHAR(255) NOT NULL,
	"CustPostCode" VARCHAR(255) NOT NULL,
	"CustEmail" VARCHAR(255) NOT NULL,
	"CustMobile" VARCHAR(255) NOT NULL,
	CONSTRAINT Customers_pk PRIMARY KEY ("CustID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Orders" (
	"OrderID" serial NOT NULL,
	"CustID" integer NOT NULL,
	"OrderDate" DATE NOT NULL,
	"OrderTime" TIME NOT NULL,
	"OrderTotal" FLOAT NOT NULL,
	"StaffID" integer NOT NULL,
	CONSTRAINT Orders_pk PRIMARY KEY ("OrderID")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "Employees" (
	"StaffID" serial NOT NULL,
	"StaffFirstName" VARCHAR(255) NOT NULL,
	"StaffSurname" VARCHAR(255) NOT NULL,
	"StaffMobile" VARCHAR(255) NOT NULL,
	"StaffEmail" VARCHAR(255) NOT NULL,
	CONSTRAINT Employees_pk PRIMARY KEY ("StaffID")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk0" FOREIGN KEY ("CustID") REFERENCES "Customers"("CustID");

ALTER TABLE "Employees" ADD CONSTRAINT "Employees_fk0" FOREIGN KEY ("StaffID") REFERENCES "Orders"("StaffID");

