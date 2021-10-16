import cors from "cors";
import * as dotenv from "dotenv";
import express from "express";

import openBankingRoutes from "./routes/openBanking.routes";

dotenv.config();

if (!process.env.PORT) {
  process.exit(1);
}

const PORT: number = parseInt(process.env.PORT as string, 10);

const app = express();
app.use(cors());

app.use(express.json());

app.use(openBankingRoutes);

app.get("/", (request, response) => {
  return response.json({
    message: "pai ta on",
  });
});

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
