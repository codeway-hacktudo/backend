import { EntityRepository, Repository } from "typeorm";
import { PersonalProcurator } from "./PersonalProcurator";

@EntityRepository(PersonalProcurator)
export class PersonalProcuratorRepository extends Repository<PersonalProcuratorRepository> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("PersonalProcurator")
          .where("PersonalProcurator.personalId = :personalId", { personalId })
          .getOne();
      }
}