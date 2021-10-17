import { EntityRepository, Repository } from "typeorm";
import { PersonalQualificationData } from "./PersonalQualificationData";

@EntityRepository(PersonalQualificationData)
export class PersonalQualificationDataRepository extends Repository<PersonalQualificationData> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("PersonalQualificationData")
          .where("PersonalQualificationData.personalId = :personalId", { personalId })
          .getOne();
      }
}