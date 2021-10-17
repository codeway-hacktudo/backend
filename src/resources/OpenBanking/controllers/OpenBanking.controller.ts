import { query, Request, Response } from "express";

import CreateConectionOpenBanking from "../services/CreateConectionOpenBanking";

export class OpenBankingController {
  // TODO VERIFICAR PARA FAZER UM INJECT
  // private createConectionOpenBanking = new CreateConectionOpenBanking();

  create(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = createConectionOpenBanking.execute();

    return response.json({
      ...responseConection,
    });
  }

  async getNaturalPersonIdentification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cpf = request.query.cpfNumber;
    const query = `
    SELECT * 
    FROM 
      personaldocuments AS pd
    INNER JOIN PersonalIdentificationData AS pid 
      ON pd.personalid = pid.personalid
    INNER JOIN personalotherdocument AS pod
      ON pod.personalid = pid.personalid
    INNER JOIN nationality AS nat
      ON nat.personalid = pid.personalid
    INNER JOIN filiation AS fil
      ON fil.personalid = pid.personalid
    INNER JOIN postaladdress  AS pa
      ON pa.personalid = pid.personalid
    INNER JOIN phones AS ph
      ON ph.personalid = pid.personalid
    INNER JOIN emails AS em
      ON em.personalid = pid.personalid
  WHERE
    pd.cpfnumber = '${cpf}'`;
    const rsp = await responseConection.query(query);
    responseConection.close();
    return response.json({
      ...rsp[0],
    });
  }

  async getBusinessPersonIdentification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request.query.cnpjNumber;
    const query = `SELECT 
                        * 
                   FROM 
                    businessidentificationdata AS bid
                    INNER JOIN businessotherdocument AS bod
                      ON bod.businessId = bid.businessId
                    INNER JOIN partiesparticipation AS pp
                      ON pp.businessId = bid.businessId
                    INNER JOIN postaladdress  AS pa
                      ON pa.businessId = bid.businessId
                    INNER JOIN phones AS ph
                      ON ph.businessId = bid.businessId
                    INNER JOIN emails AS em
                      ON em.businessId = bid.businessId
                  WHERE
                    bid.cnpjnumber = '${cnpj}'
      `;
    const rsp = await responseConection.query(query);
    responseConection.close();
    return response.json({
      ...rsp[0],
    });
  }

  async getNaturalPersonQualification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cpf = request.query.cpfNumber;
    const query = `SELECT 
                        * 
                   FROM 
                        personaldocuments AS pd
                    INNER JOIN personalqualificationdata AS piq 
                      ON pd.personalid = piq.personalid
                   WHERE
                     pd.cpfnumber = '${cpf}'
      `;
    const rsp = await responseConection.query(query);
    responseConection.close();
    return response.json({
      ...rsp[0],
    });
  }

  async getBusinessPersonQualification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request.query.cnpjNumber;
    const query = `SELECT 
                        * 
                   FROM 
                      businessidentificationdata AS bid
                    INNER JOIN businessqualificationdata AS biq 
                      ON bid.businessId = biq.businessId
                   WHERE
                     bid.cnpjnumber = '${cnpj}'
      `;
    const rsp = await responseConection.query(query);
    responseConection.close();
    return response.json({
      ...rsp[0],
    });
  }

  async getNaturalPersonFinancial(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cpf = request.body.cpfNumber;
    const query = `SELECT 
                        * 
                   FROM 
                    businessidentificationdata AS bid
                    INNER JOIN personalfinancialrelationdata AS pfr
                      ON pd.personalid = pfr.personalid
                    INNER JOIN personalprocurator AS pp
                      ON pp.personalid = pd.personalid
                   WHERE
                    bid.cpfnumber = '${cpf}'
      `;
    const rsp = await responseConection.query(query);
    responseConection.close();
    return response.json({
      ...rsp[0],
    });
  }

  async getNaturalBusinessFinancial(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request.query.cnpjNumber;
    const query = ` SELECT 
                        * 
                    FROM 
                        businessidentificationdata AS pd
                    INNER JOIN businessfinancialrelationdata AS bfr
                      ON pd.businessId = bfr.businessId
                    INNER JOIN businessprocurator AS bp
                      ON bp.businessId = pd.businessId
                    WHERE
                    pd.cnpjNumber = '${cnpj}'
      `;
    const rsp = await responseConection.query(query);
    responseConection.close();
    return response.json({
      ...rsp[0],
    });
  }

  async getPartiesMembers(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request.query.cnpjNumber;
    const query_parties = `
    SELECT 
      pp.*
    FROM
    businessidentificationdata AS bid
    INNER JOIN 
    partiesparticipation AS pp
      ON pp.businessId = bid.businessId
    WHERE
    bid.cnpjNumber ='${cnpj}'
    `;
    const partie_array = await responseConection.query(query_parties);
    const parties_cpf = [];
    await Promise.all(
      partie_array.map(async (element) => {
        if (element.documenttype === "CNPJ") {
          const query = `
            SELECT * 
            FROM 
              personalotherdocument AS pd
            INNER JOIN PersonalIdentificationData AS pid 
              ON pd.personalid = pid.personalid
            INNER JOIN personaldocuments AS pod
              ON pod.personalid = pid.personalid
            INNER JOIN nationality AS nat
              ON nat.personalid = pid.personalid
            INNER JOIN filiation AS fil
              ON fil.personalid = pid.personalid
            INNER JOIN postaladdress  AS pa
              ON pa.personalid = pid.personalid
            INNER JOIN phones AS ph
              ON ph.personalid = pid.personalid
            INNER JOIN emails AS em
              ON em.personalid = pid.personalid
          WHERE
              pd.type = 'CNPJ' AND
                pd.number = '${element.documentnumber}'
                `;
          const rsp = await responseConection.query(query);
          console.log(rsp);
          parties_cpf.push(rsp[0]);
        }
      })
    );
    responseConection.close();
    return response.json({
      message: parties_cpf,
    });
  }
}
