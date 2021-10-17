import { Router } from "express";
import multer from "multer";

import { AuthenticationController } from "../resources/Authentication/controllers/Authentication.controller";

const authenticationRoutes = Router();

const authenticationController = new AuthenticationController();

const upload = multer({ dest: "uploads/" });

authenticationRoutes.post(
  "/authentication",
  upload.single("idPhoto"),
  authenticationController.create
);

export default authenticationRoutes;
