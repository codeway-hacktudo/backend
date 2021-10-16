import { Router } from "express";

import CreateConectionOpenBanking from "../resources/OpenBanking/CreateConectionOpenBanking";

const openBankingRoutes = Router();

openBankingRoutes.get("/open-banking", (request, response) => {
  const responseConection = CreateConectionOpenBanking.execute();

  return response.json({
    message: responseConection,
  });
});

export default openBankingRoutes;
