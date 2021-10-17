import { Request, Response } from "express";

import CreateConectionOpenBanking from "../services/CreateConectionOpenBanking";

export class OpenBankingController {
  // TODO VERIFICAR PARA FAZER UM INJECT
  // private createConectionOpenBanking = new CreateConectionOpenBanking();

  create(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = createConectionOpenBanking.execute();

    return response.json({
      message: responseConection,
    });
  }

  async getNaturalPersonIdentification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cpf = request['body']['cpfNumber']
    const query = `SELECT 
                        * 
                   FROM 
                        personaldocuments AS pd
                    INNER JOIN PersonalIdentificationData AS pid 
                      ON pd.personalid = pid.personalid
                    INNER JOIN personalotherdocument AS pod
                      ON pod.personlid = pid.personalid
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
                    pd.cpfnumber = ${cpf}
      `;
      const { rows } = await responseConection.query(query);
      responseConection.close()
    return response.json({
      message: rows,
    });
  }


  async getBusinessPersonIdentification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request['body']['cnpjNumber']
    const query = `SELECT 
                        * 
                   FROM 
                    businessidentificationdata AS bid
                    INNER JOIN businessotherdocument AS bod
                      ON bod.personlid = bid.businessId
                    INNER JOIN partiesparticipation AS pp
                      ON pp.businessId = bid.businessId
                    INNER JOIN postaladdress  AS pa
                      ON pa.businessId = bid.businessId
                    INNER JOIN phones AS ph
                      ON ph.businessId = bid.businessId
                    INNER JOIN emails AS em
                      ON em.businessId = bid.businessId
                  WHERE
                    bid.cnpjnumber = ${cnpj}
      `;
      const { rows } = await responseConection.query(query);
      responseConection.close()
    return response.json({
      message: rows,
    });
  }


  async getNaturalPersonQualification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cpf = request['body']['cpfNumber']
    const query = `SELECT 
                        * 
                   FROM 
                        personaldocuments AS pd
                    INNER JOIN personalqualificationdata AS piq 
                      ON pd.personalid = piq.personalid
                   WHERE
                     pd.cpfnumber = ${cpf}
      `;
      const { rows } = await responseConection.query(query);
      responseConection.close()
    return response.json({
      message: rows,
    });
  }

  async getBusinessPersonQualification(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request['body']['cnpjNumber']
    const query = `SELECT 
                        * 
                   FROM 
                      businessidentificationdata AS bid
                    INNER JOIN businessqualificationdata AS biq 
                      ON bid.businessId = biq.businessId
                   WHERE
                     bid.cnpjnumber = ${cnpj}
      `;
      const { rows } = await responseConection.query(query);
      responseConection.close()
    return response.json({
      message: rows,
    });
  }

  async getNaturalPersonFinancial(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cpf = request['body']['cpfNumber']
    const query = `SELECT 
                        * 
                   FROM 
                    businessidentificationdata AS bid
                    INNER JOIN personalfinancialrelationdata AS pfr
                      ON pd.personalid = pfr.personalid
                    INNER JOIN personalprocurator AS pp
                      ON pp.personalid = pd.personalid
                   WHERE
                    bid.cpfnumber = ${cpf}
      `;
      const { rows } = await responseConection.query(query);
      responseConection.close()
    return response.json({
      message: rows,
    });
  }

  async getNaturalBusinessFinancial(request: Request, response: Response) {
    const createConectionOpenBanking = new CreateConectionOpenBanking();
    const responseConection = await createConectionOpenBanking.execute();
    const cnpj = request['body']['cnpjNumber']
    const query = `SELECT 
                        * 
                   FROM 
                        personaldocuments AS pd
                    INNER JOIN businessfinancialrelationdata AS bfr
                      ON pd.businessId = pfr.businessId
                    INNER JOIN businessprocurator AS bp
                      ON bp.businessId = pd.businessId
                   WHERE
                     pd.cnpjNumber = ${cnpj}
      `;
      const { rows } = await responseConection.query(query);
      responseConection.close()
    return response.json({
      message: rows,
    });
  }
}
