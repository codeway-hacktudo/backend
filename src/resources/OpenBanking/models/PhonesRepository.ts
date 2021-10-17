import { EntityRepository, Repository } from "typeorm";
import { Phones } from "./Phones";

@EntityRepository(Phones)
export class PhonesRepository extends Repository<PhonesRepository> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("Phones")
          .where("Phones.personalId = :personalId", { personalId })
          .getOne();
      }

    findByBusinessId(businessId: string) {
    return this.createQueryBuilder("Phones")
        .where("Phones.businessId = :businessId", { businessId })
        .getOne();
    }
}