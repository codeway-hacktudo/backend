import { Router } from "express";

import { OpenBankingController } from "../resources/OpenBanking/controllers/OpenBanking.controller";

const openBankingRoutes = Router();

const openBankingController = new OpenBankingController();

openBankingRoutes.get("/open-banking", openBankingController.create);
openBankingRoutes.get("/open-banking/getPersonalInfo", openBankingController.getNaturalPersonIdentification)
openBankingRoutes.get("/open-banking/getBusineessInfo", openBankingController.getBusinessPersonIdentification)
openBankingRoutes.get("/open-banking/getPersonalFin", openBankingController.getNaturalPersonFinancial)
openBankingRoutes.get("/open-banking/getBusinessFin", openBankingController.getNaturalBusinessFinancial)
openBankingRoutes.get("/open-banking/getPersonalQuali", openBankingController.getNaturalPersonQualification)
openBankingRoutes.get("/open-banking/getBusinessQuali", openBankingController.getBusinessPersonQualification)

export default openBankingRoutes;
