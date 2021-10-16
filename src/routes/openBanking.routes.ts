import { Router } from "express";

import { OpenBankingController } from "../resources/OpenBanking/controllers/OpenBanking.controller";

const openBankingRoutes = Router();

const openBankingController = new OpenBankingController();

openBankingRoutes.get("/open-banking", openBankingController.create);

export default openBankingRoutes;
