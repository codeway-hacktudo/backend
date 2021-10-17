import { EntityRepository, Repository } from "typeorm";
import { PersonalIdentificationData } from "./PersonalIdentificationData";

@EntityRepository(PersonalIdentificationData)
export class PersonalIdentificationDataRepository extends Repository<PersonalIdentificationData> {
  findByPersonalId(personalId: string) {
    return this.createQueryBuilder("PersonalIdentificationData")
      .where("PersonalIdentificationData.personalId = :personalId", { personalId })
      .getOne();
  }
}