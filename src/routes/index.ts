import { Router } from "express";

import authenticationRoutes from "./authentication.routes";
import openBankingRoutes from "./openBanking.routes";

const routes = Router();

routes.use(authenticationRoutes);
routes.use(openBankingRoutes);

export default routes;
