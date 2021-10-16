    -- 1˚
INSERT INTO personalidentificationdata(
	updatedatetime, 
    personalid,
    brandname, 
    civilname, 
    socialname, 
    birthdate,
    maritalstatuscode, 
    maritalstatusadditionalinfo, 
    sex, 
    companycnpj, 
    hasbraziliannationality)
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
	VALUES ( 'CNH', 
            'NA', 
            '15291908', 
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
            'karinafernandes-81@br.inter.net', 
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
            'Luiza e Benjamin Assessoria Jurídica Ltda', 
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
            '2021-05-21' 
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
            'Luiza e Benjamin Assessoria Jurídica Ltda', 
            'Mundo da Eletronica', 
            '2021-05-21T08:30:00Z', 
            '0.51', 
            'CPF', 
            '73677831148', 
            'CNH', 
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
            'karinafernandes-81@br.inter.net', 
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
            '578-psd-71md6971kjh-2d414');
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
	VALUES ("PROCURADOR",
    "73677831148",
    "Elza Milena Stefany Teixeira",
    "Carlos",
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
            '577-psd-71md6971kjh-2d414');

INSERT INTO personalprocurator(
	type, 
    cpfnumber, 
    civilname, 
    socialname, 
    personalid)
	VALUES ("PROCURADOR",
    "73677831148",
    "Elza Milena Stefany Teixeira",
    "Carlos",
    '577-psd-71md6971kjh-2d414');