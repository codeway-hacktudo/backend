import * as dotenv from "dotenv";
import express from "express";
import swaggerUi from "swagger-ui-express";

import openBankingRoutes from "./routes/openBanking.routes";
import swaggerFile from "./swagger.json";

dotenv.config();

const app = express();

app.use(express.json());

app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerFile));

app.use(openBankingRoutes);

app.get("/", (request, response) => {
  return response.json({
    message: "pai ta on",
  });
});

if (!process.env.PORT) {
  process.exit(1);
}

const PORT: number = parseInt(process.env.PORT as string, 10);
app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
