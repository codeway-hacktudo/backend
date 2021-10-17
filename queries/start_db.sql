-- First Endpoint
CREATE TABLE IF NOT EXISTS PersonalIdentificationData (
    updateDateTime varchar(50),
    personalId varchar(50) PRIMARY KEY,
    brandName varchar(50),
    civilName varchar(50),
    socialName varchar(50),
    birthDate varchar(50),
    maritalStatusCode varchar(50),
    maritalStatusAdditionalInfo varchar(50),
    sex varchar(50),
    companyCnpj varchar(50),
    hasBrazilianNationality varchar(50)
);

CREATE TABLE IF NOT EXISTS PersonalDocuments (
    id SERIAL PRIMARY KEY,
    cpfNumber varchar(50),
    passportNumber varchar(50),
    passportCountry varchar(50),
    passportExpirationDate varchar(50),
    passportIssueDate varchar(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS PersonalOtherDocument (
    id SERIAL PRIMARY KEY,
    type varchar(50),
    typeAdditionalInfo varchar(50),
    number varchar(50),
    checkDigit varchar(50),
    additionalInfo varchar(50),
    expirationDate varchar(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id_other_doc
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Nationality (
    id SERIAL PRIMARY KEY,
    otherNationalitiesInfo varchar(50),
    type varchar(50),
    number varchar(50),
    expirationDate varchar(50),
    issueDate varchar(50),
    country varchar(50),
    typeAdditionalInfo varchar(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id_other_nationality
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Filiation (
    id SERIAL PRIMARY KEY,
    type varchar(50), 
    civilName varchar(50), 
    socialName varchar(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id_personal_filiation
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)

);

--Second Endpoint

CREATE TABLE IF NOT EXISTS BusinessIdentificationData (
    updateDateTime varchar(50),
    businessId varchar(50) PRIMARY KEY,
    brandName varchar(50),
    companyName varchar(50),
    tradeName varchar(50),
    incorporationDate varchar(50),
    cnpjNumber varchar(50),
    companyCnpjNumber varchar(50)
);

CREATE TABLE IF NOT EXISTS BusinessOtherDocument (
    id SERIAL PRIMARY KEY,
    type varchar(50),
    number varchar(50),
    country varchar(50),
    expirationDate varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_other_doc
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)  
);

CREATE TABLE IF NOT EXISTS PartiesParticipation (
    id SERIAL PRIMARY KEY,
    personType varchar(50),
    type varchar(50),
    civilName varchar(50),
    socialName varchar(50),
    companyName varchar(50),
    tradeName varchar(50),
    startDate varchar(50),
    shareholding varchar(50),
    documentType varchar(50),
    documentNumber varchar(50),
    documentAdditionalInfo varchar(50),
    documentCountry varchar(50),
    documentExpirationDate varchar(50),
    documentIssueDate varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_parties
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)
);


-- Third Endpoint
CREATE TABLE IF NOT EXISTS PersonalQualificationData(
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(50),
    companyCnpj varchar(50),
    occupationCode varchar(50),
    occupationDescription varchar(50),
    informedIncomeFrequency varchar(50),
    informedIncomeAmount varchar(50),
    informedIncomeCurrency varchar(50),
    informedIncomeDate varchar(50),
    informedPatrimonyAmount varchar(50),
    informedPatrimonyCurrency varchar(50),
    informedPatrimonyYear varchar(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id_qualify
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

-- Quarto Endpoint

CREATE TABLE IF NOT EXISTS BusinessQualificationData (
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(50),
    economicActivitiesCode varchar(50),
    economicActivitiesIsMain varchar(50),
    informedRevenueFrequency varchar(50),
    informedRevenueFrequencyAdditionalInfo varchar(50),
    informedRevenueAmount varchar(50),
    informedRevenueCurrency varchar(50),
    informedRevenueYear varchar(50),
    informedPatrimonyAmount varchar(50),
    informedPatrimonyCurrency varchar(50),
    informedPatrimonyDate varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_qualify
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)
    
);

--Fifth endpoint
CREATE TABLE IF NOT EXISTS PersonalFinancialRelationData (
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(50),
    startDate varchar(50),
    productsServicesType varchar(50),
    productsServicesTypeAdditionalInfo varchar(50),
    accountsCompeCode varchar(50),
    accountsBranchCode varchar(50),
    accountsNumber varchar(50),
    accountsCheckDigit varchar(50),
    accountsType varchar(50),
    accountsSubtype varchar(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id_personal_relation_data
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);


CREATE TABLE IF NOT EXISTS PersonalProcurator (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    cpfNumber VARCHAR(50),
    civilName VARCHAR(50),
    socialName VARCHAR(50),
    personalId varchar(50),
    CONSTRAINT fk_personal_id_personal_procurator
        FOREIGN KEY (personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

-- sixth endpoint
CREATE TABLE IF NOT EXISTS BusinessFinancialRelationData (
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(50),
    startDate varchar(50),
    productsServicesType varchar(50),
    productsServicesTypeAdditionalInfo varchar(50),
    accountsCompeCode varchar(50),
    accountsBranchCode varchar(50),
    accountsNumber varchar(50),
    accountsCheckDigit varchar(50),
    accountsType varchar(50),
    accountsSubtype varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_personal_relation_data
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)
);


CREATE TABLE IF NOT EXISTS BusinessProcurator (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50),
    cnpjCpfNumber VARCHAR(50),
    civilName VARCHAR(50),
    socialName VARCHAR(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_personal_procurator
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)

);



-- Common tables

CREATE TABLE IF NOT EXISTS PostalAddress (
    id SERIAL PRIMARY KEY,
    isMain varchar(50),
    address varchar(50),
    additionalInfo varchar(50),
    districtName varchar(50),
    townName varchar(50),
    ibgeTownCode varchar(50),
    countrySubDivision varchar(50),
    postCode varchar(50),
    country varchar(50),
    countryCode varchar(50),
    personalId varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_address
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId),
    CONSTRAINT fk_personal_id_personal_address
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Phones (
    id SERIAL PRIMARY KEY,
    isMain varchar(50),
    type varchar(50),
    additionalInfo varchar(50),
    countryCallingCode varchar(50),
    areaCode varchar(50),
    number varchar(50),
    phoneExtension varchar(50),
    personalId varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_phone
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId),
    CONSTRAINT fk_personal_id_personal_phones
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Emails (
    id SERIAL PRIMARY KEY,
    isMain varchar(50),
    email varchar(50),
    personalId varchar(50),
    businessId varchar(50),
    CONSTRAINT fk_business_id_email
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId),
    CONSTRAINT fk_personal_id_personal_emails
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

INSERT INTO PersonalIdentificationData(
	updateDateTime, 
    personalId,
    brandName, 
    civilName, 
    socialName, 
    birthDate,
    maritalStatusCode, 
    maritalStatusAdditionalInfo, 
    sex, 
    companyCnpj, 
    hasBrazilianNationality)
	VALUES ('2021-05-21T08:30:00Z', 
            '578-psd-71md6971kjh-2d414', 
            'Organização A', 
            'Juan Kaique Cláudio Fernandes', 
            'Jaqueline de Freitas', 
            '2021-05-21', 
            'SOLTEIRO',
            'Casado',
            'FEMININO', 
            '01773247000103', 
            'false');

INSERT INTO personaldocuments( 
    cpfnumber, 
    passportnumber, 
    passportcountry,
    passportexpirationdate,
    passportissuedate,
    personalid)
        VALUES ('25872252137',
                '75253468744594820620',
                'CAN',
                '2021-05-21',
                '2021-05-21',
                '578-psd-71md6971kjh-2d414');

INSERT INTO personalotherdocument(
	type, 
    typeadditionalinfo, 
    "number", 
    checkdigit, 
    additionalinfo, 
    expirationdate, 
    personalid)
	VALUES ( 'CNPJ', 
            'NA', 
            '01773247000103', 
            'P', 
            'SSP/SP', 
            '2021-05-21', 
            '578-psd-71md6971kjh-2d414');

INSERT INTO nationality(
    othernationalitiesinfo, 
    type, 
    "number", 
    expirationdate, 
    issuedate, 
    country, 
    typeadditionalinfo, 
    personalid)
	VALUES ( 'CAN', 
            'SOCIAL SEC', 
            '423929299', 
            '2021-05-21', 
            '2021-05-21', 
            'Brasil', 
            'Informações adicionais.', 
            '578-psd-71md6971kjh-2d414');

INSERT INTO filiation(
	type, civilname, socialname, personalid)
	VALUES ('PAI', 'Marcelo Cláudio Fernandes', 'NA', '578-psd-71md6971kjh-2d414');

INSERT INTO postaladdress(
	ismain, 
    address, 
    additionalinfo, 
    districtname, 
    townname, 
    ibgetowncode, 
    countrysubdivision, 
    postcode, 
    country, 
    countrycode, 
    personalid, 
    businessid)
	VALUES ( 'true', 
            'Av Naburo Ykesaki, 1270', 
            'Fundos', 
            'Centro', 
            'Marília', 
            '3550308', 
            'SP', 
            '17500001', 
            'Brasil', 
            'BRA', 
            '578-psd-71md6971kjh-2d414', 
            Null);

INSERT INTO phones(
	ismain, 
    type, 
    additionalinfo, 
    countrycallingcode, 
    areacode, 
    "number", 
    phoneextension, 
    personalid, 
    businessid)
	VALUES ('true', 
            'FIXO', 
            'Informações adicionais.', 
            '55', 
            '19', 
            '29875132', 
            '932', 
            '578-psd-71md6971kjh-2d414', 
            Null);

INSERT INTO emails(
    ismain, 
    email, 
    personalid, 
    businessid)
	VALUES ('true', 
            'karinaf81@br.inter.net', 
            '578-psd-71md6971kjh-2d414', 
            Null);

-- 2˚

INSERT INTO businessidentificationdata(
	updatedatetime, 
    businessid, 
    brandname, 
    companyname, 
    tradename, 
    incorporationdate, 
    cnpjnumber, 
    companycnpjnumber)
	VALUES ('2021-05-21T08:30:00Z', 
            '577-psd-71md6971kjh-2d414', 
            'Organização A', 
            'LeBA Jurídica Ltda', 
            'Mundo da Eletronica', 
            '2021-05-21T08:30:00Z', 
            '50685362006773', 
            '50685362000135');

INSERT INTO businessotherdocument(
	type, 
    "number", 
    country, 
    expirationdate, 
    businessid)
	VALUES ('EIN', 
            '128328453', 
            'CAN', 
            '2021-05-21',
            '577-psd-71md6971kjh-2d414');

INSERT INTO partiesparticipation(
	persontype, 
    type, 
    civilname, 
    socialname, 
    companyname, 
    tradename, 
    startdate, 
    shareholding, 
    documenttype, 
    documentnumber, 
    documentadditionalinfo, 
    documentcountry, 
    documentexpirationdate, 
    documentissuedate, 
    businessid)
	VALUES ( 'PESSOA_NATURAL', 
            'SOCIO', 
            'Juan Kaique Cláudio Fernandes', 
            'Karina', 
            'LeBA Jurídica Ltda', 
            'Mundo da Eletronica', 
            '2021-05-21T08:30:00Z', 
            '0.51', 
            'CNPJ', 
            '01773247000103', 
            '', 
            'CAN', 
            '2021-05-21', 
            '2021-05-21',
            '577-psd-71md6971kjh-2d414');

INSERT INTO postaladdress(
	ismain, 
    address, 
    additionalinfo, 
    districtname, 
    townname, 
    ibgetowncode, 
    countrysubdivision, 
    postcode, 
    country, 
    countrycode, 
    personalid, 
    businessid)
	VALUES ( 'true', 
            'Av Naburo Ykesaki, 1270', 
            'Fundos', 
            'Centro', 
            'Marília', 
            '3550308', 
            'SP', 
            '17500001', 
            'Brasil', 
            'BRA', 
            Null, 
            '577-psd-71md6971kjh-2d414');

INSERT INTO phones(
	ismain, 
    type, 
    additionalinfo, 
    countrycallingcode, 
    areacode, 
    "number", 
    phoneextension, 
    personalid, 
    businessid)
	VALUES ('true', 
            'FIXO', 
            'Informações adicionais.', 
            '55', 
            '19', 
            '29875132', 
            '932', 
            Null, 
            '577-psd-71md6971kjh-2d414');

INSERT INTO emails(
    ismain, 
    email, 
    personalid, 
    businessid)
	VALUES ('true', 
            'karinaf81@br.inter.net', 
            Null, 
            '577-psd-71md6971kjh-2d414');

-- 3˚

INSERT INTO personalqualificationdata(
	updatedatetime, 
    companycnpj, 
    occupationcode, 
    occupationdescription, 
    informedincomefrequency, 
    informedincomeamount, 
    informedincomecurrency, 
    informedincomedate, 
    informedpatrimonyamount, 
    informedpatrimonycurrency, 
    informedpatrimonyyear, 
    personalid)
	VALUES ( '2021-05-21T08:30:00Z', 
            '50685362000135', 
            'RECEITA_FEDERAL', 
            '01', 
            'DIARIA', 
            '100000.04', 
            'BRL', 
            '2021-05-21', 
            '100000.04', 
            'BRL', 
            '201', 
            '578-psd-71md6971kjh-2d414');

-- 4˚
INSERT INTO businessqualificationdata(
	updatedatetime, 
    economicactivitiescode, 
    economicactivitiesismain, 
    informedrevenuefrequency, 
    informedrevenuefrequencyadditionalinfo, 
    informedrevenueamount, 
    informedrevenuecurrency, 
    informedrevenueyear, 
    informedpatrimonyamount, 
    informedpatrimonycurrency, 
    informedpatrimonydate, 
    businessid)
	VALUES ( '2021-05-21T08:30:00Z', 
            '8599604', 
            'true' ,
            'DIARIA', 
            'Informações adicionais', 
            '100000.04', 
            'BRL', 
            '2010', 
            '100000.04', 
            'BRL', 
            '2021-05-21', 
            '577-psd-71md6971kjh-2d414');
-- 5˚
INSERT INTO businessfinancialrelationdata(
	updatedatetime, 
    startdate, 
    productsservicestype, 
    productsservicestypeadditionalinfo, 
    accountscompecode, 
    accountsbranchcode, 
    accountsnumber, 
    accountscheckdigit, 
    accountstype, 
    accountssubtype, 
    businessid)
	VALUES ('2021-05-21T08:30:00Z', 
            '2021-05-21T08:30:00Z', 
            'SEGURO',
            'Informações adicionais do tipo de serviço.', 
            '001', 
            '6272', 
            '24550245', 
            '4', 
            'CONTA_DEPOSITO_A_VISTA', 
            'INDIVIDUAL', 
            '577-psd-71md6971kjh-2d414');

INSERT INTO businessprocurator(
	type, 
    cnpjcpfnumber, 
    civilname, 
    socialname, 
    businessid)
	VALUES ('PROCURADOR',
    '73677831148',
    'Elza Milena Stefany Teixeira',
    'Carlos',
    '577-psd-71md6971kjh-2d414');

-- 6˚
INSERT INTO personalfinancialrelationdata(
	updatedatetime, 
    startdate, 
    productsservicestype, 
    productsservicestypeadditionalinfo, 
    accountscompecode, 
    accountsbranchcode, 
    accountsnumber, 
    accountscheckdigit, 
    accountstype, 
    accountssubtype, 
    personalid)
	VALUES ('2021-05-21T08:30:00Z', 
            '2021-05-21T08:30:00Z', 
            'SEGURO',
            'Informações adicionais do tipo de serviço.', 
            '001', 
            '6272', 
            '24550245', 
            '4', 
            'CONTA_DEPOSITO_A_VISTA', 
            'INDIVIDUAL', 
            '578-psd-71md6971kjh-2d414');

INSERT INTO personalprocurator(
	type, 
    cpfnumber, 
    civilname, 
    socialname, 
    personalid)
	VALUES ('PROCURADOR',
    '73677831148',
    'Elza Milena Stefany Teixeira',
    'Carlos',
    '578-psd-71md6971kjh-2d414');