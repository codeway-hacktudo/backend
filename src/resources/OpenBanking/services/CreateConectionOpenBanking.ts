import { createConnection } from "typeorm";
import * as dotenv from "dotenv";

dotenv.config();

class CreateConectionOpenBanking {
  execute() {
    const conn = createConnection(
      {type: "postgres",
      host: "localhost",
      port: 5432,
      username: process.env.POSTGRES_USER,
      password: process.env.POSTGRES_PASSWORD,
      database: process.env.POSTGRES_DB
    }
    )
    return conn;
  }
}

export default CreateConectionOpenBanking;
