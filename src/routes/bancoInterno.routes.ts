import { Router } from "express";

import { BancoInternoController } from "../resources/BancoInterno/controllers/BancoInternoController.controller";

const bancoInternoRoutes = Router();
const bancoInternoController = new BancoInternoController();

bancoInternoRoutes.get(
  "/banco-interno/mocked",
  bancoInternoController.getMockedInfo
);

export default bancoInternoRoutes;
