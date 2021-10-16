-- First Endpoint
CREATE TABLE IF NOT EXISTS PersonalIdentificationData (
    updateDateTime varchar(30),
    personalId varchar(30) PRIMARY KEY,
    brandName varchar(30),
    civilName varchar(30),
    socialName varchar(30),
    birthDate varchar(30),
    maritalStatusCode varchar(30),
    maritalStatusAdditionalInfo varchar(30),
    sex varchar(30),
    companyCnpj varchar(30),
    hasBrazilianNationality varchar(30)
);

CREATE TABLE IF NOT EXISTS PersonalDocuments (
    id SERIAL PRIMARY KEY,
    cpfNumber varchar(30),
    passportNumber varchar(30),
    passportCountry varchar(30),
    passportExpirationDate varchar(30),
    passportIssueDate varchar(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS PersonalOtherDocument (
    id SERIAL PRIMARY KEY,
    type varchar(30),
    typeAdditionalInfo varchar(30),
    number varchar(30),
    checkDigit varchar(30),
    additionalInfo varchar(30),
    expirationDate varchar(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id_other_doc
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Nationality (
    id SERIAL PRIMARY KEY,
    otherNationalitiesInfo varchar(30),
    type varchar(30),
    number varchar(30),
    expirationDate varchar(30),
    issueDate varchar(30),
    country varchar(30),
    typeAdditionalInfo varchar(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id_other_nationality
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Filiation (
    id SERIAL PRIMARY KEY,
    type varchar(30), 
    civilName varchar(30), 
    socialName varchar(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id_personal_filiation
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)

);

--Second Endpoint

CREATE TABLE IF NOT EXISTS BusinessIdentificationData (
    updateDateTime varchar(30),
    businessId varchar(30) PRIMARY KEY,
    brandName varchar(30),
    companyName varchar(30),
    tradeName varchar(30),
    incorporationDate varchar(30),
    cnpjNumber varchar(30),
    companyCnpjNumber varchar(30)
);

CREATE TABLE IF NOT EXISTS BusinessOtherDocument (
    id SERIAL PRIMARY KEY,
    type varchar(30),
    number varchar(30),
    country varchar(30),
    expirationDate varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_other_doc
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)  
);

CREATE TABLE IF NOT EXISTS PartiesParticipation (
    id SERIAL PRIMARY KEY,
    personType varchar(30),
    type varchar(30),
    civilName varchar(30),
    socialName varchar(30),
    companyName varchar(30),
    tradeName varchar(30),
    startDate varchar(30),
    shareholding varchar(30),
    documentType varchar(30),
    documentNumber varchar(30),
    documentAdditionalInfo varchar(30),
    documentCountry varchar(30),
    documentExpirationDate varchar(30),
    documentIssueDate varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_parties
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)
);


-- Third Endpoint
CREATE TABLE IF NOT EXISTS PersonalQualificationData(
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(30),
    companyCnpj varchar(30),
    occupationCode varchar(30),
    occupationDescription varchar(30),
    informedIncomeFrequency varchar(30),
    informedIncomeAmount varchar(30),
    informedIncomeCurrency varchar(30),
    informedIncomeDate varchar(30),
    informedPatrimonyAmount varchar(30),
    informedPatrimonyCurrency varchar(30),
    informedPatrimonyYear varchar(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id_qualify
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

-- Quarto Endpoint

CREATE TABLE IF NOT EXISTS BusinessQualificationData (
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(30),
    economicActivitiesCode varchar(30),
    economicActivitiesIsMain varchar(30),
    informedRevenueFrequency varchar(30),
    informedRevenueFrequencyAdditionalInfo varchar(30),
    informedRevenueAmount varchar(30),
    informedRevenueCurrency varchar(30),
    informedRevenueYear varchar(30),
    informedPatrimonyAmount varchar(30),
    informedPatrimonyCurrency varchar(30),
    informedPatrimonyDate varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_qualify
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)
    
);

--Fifth endpoint
CREATE TABLE IF NOT EXISTS PersonalFinancialRelationData (
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(30),
    startDate varchar(30),
    productsServicesType varchar(30),
    productsServicesTypeAdditionalInfo varchar(30),
    accountsCompeCode varchar(30),
    accountsBranchCode varchar(30),
    accountsNumber varchar(30),
    accountsCheckDigit varchar(30),
    accountsType varchar(30),
    accountsSubtype varchar(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id_personal_relation_data
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);


CREATE TABLE IF NOT EXISTS PersonalProcurator (
    id SERIAL PRIMARY KEY,
    type VARCHAR(30),
    cpfNumber VARCHAR(30),
    civilName VARCHAR(30),
    socialName VARCHAR(30),
    personalId varchar(30),
    CONSTRAINT fk_personal_id_personal_procurator
        FOREIGN KEY (personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

-- sixth endpoint
CREATE TABLE IF NOT EXISTS BusinessFinancialRelationData (
    id SERIAL PRIMARY KEY,
    updateDateTime varchar(30),
    startDate varchar(30),
    productsServicesType varchar(30),
    productsServicesTypeAdditionalInfo varchar(30),
    accountsCompeCode varchar(30),
    accountsBranchCode varchar(30),
    accountsNumber varchar(30),
    accountsCheckDigit varchar(30),
    accountsType varchar(30),
    accountsSubtype varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_personal_relation_data
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)
);


CREATE TABLE IF NOT EXISTS BusinessProcurator (
    id SERIAL PRIMARY KEY,
    type VARCHAR(30),
    cnpjCpfNumber VARCHAR(30),
    civilName VARCHAR(30),
    socialName VARCHAR(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_personal_procurator
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId)

);



-- Common tables

CREATE TABLE IF NOT EXISTS PostalAddress (
    id SERIAL PRIMARY KEY,
    isMain varchar(30),
    address varchar(30),
    additionalInfo varchar(30),
    districtName varchar(30),
    townName varchar(30),
    ibgeTownCode varchar(30),
    countrySubDivision varchar(30),
    postCode varchar(30),
    country varchar(30),
    countryCode varchar(30),
    personalId varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_address
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId),
    CONSTRAINT fk_personal_id_personal_address
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Phones (
    id SERIAL PRIMARY KEY,
    isMain varchar(30),
    type varchar(30),
    additionalInfo varchar(30),
    countryCallingCode varchar(30),
    areaCode varchar(30),
    number varchar(30),
    phoneExtension varchar(30),
    personalId varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_phone
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId),
    CONSTRAINT fk_personal_id_personal_phones
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);

CREATE TABLE IF NOT EXISTS Emails (
    id SERIAL PRIMARY KEY,
    isMain varchar(30),
    email varchar(30),
    personalId varchar(30),
    businessId varchar(30),
    CONSTRAINT fk_business_id_email
        FOREIGN KEY(businessId)
            REFERENCES BusinessIdentificationData(businessId),
    CONSTRAINT fk_personal_id_personal_emails
        FOREIGN KEY(personalId)
            REFERENCES PersonalIdentificationData(personalId)
);
