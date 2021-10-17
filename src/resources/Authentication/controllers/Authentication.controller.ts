import { Request, Response, NextFunction } from "express";

import CreateAuthenticationService from "../services/CreateAuthentication.service";

export class AuthenticationController {
  async create(request: Request, response: Response) {
    const createAuthentication = new CreateAuthenticationService();
    const responseAuthentication = await createAuthentication.execute();
    console.log(responseAuthentication);
    setTimeout(() => {
      return response.json({
        authentication: true,
      });
    }, 2000);
  }
}
