import { EntityRepository, Repository } from "typeorm";
import { PersonalIdentificationData } from "./PersonalIdentificationData";

@EntityRepository(PersonalIdentificationData)
export class PersonalIdentificationDataRepository extends Repository<PersonalIdentificationData> {
  findByPersonalId(personalId: string) {
    return this.createQueryBuilder("personalidentificationdata")
      .where("personalidentificationdata.personalId = :personalId", { personalId })
      .getOne();
  }
}