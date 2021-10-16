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
}
