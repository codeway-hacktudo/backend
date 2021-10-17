import { EntityRepository, Repository } from "typeorm";
import { Nationality } from "./Nationality";

@EntityRepository(Nationality)
export class NationalityRepository extends Repository<Nationality> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("Nationality")
          .where("Nationality.personalId = :personalId", { personalId })
          .getOne();
      }
}