import cors from "cors";
import * as dotenv from "dotenv";
import express from "express";
import swaggerUi from "swagger-ui-express";

import routes from "./routes";
import swaggerFile from "./swagger.json";

dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerFile));

app.use(routes);

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
