import { EntityRepository, Repository } from "typeorm";
import { Filiation } from "./Filiation";

@EntityRepository(Filiation)
export class FiliationRepository extends Repository<Filiation> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("Filiation")
          .where("Filiation.personalId = :personalId", { personalId })
          .getOne();
      }
}