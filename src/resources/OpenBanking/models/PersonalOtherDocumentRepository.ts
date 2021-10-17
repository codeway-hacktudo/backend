import { EntityRepository, Repository } from "typeorm";
import { PersonalOtherDocument } from "./PersonalOtherDocument";

@EntityRepository(PersonalOtherDocument)
export class PersonalOtherDocumentRepository extends Repository<PersonalOtherDocumentRepository> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("personalidentificationdata")
          .where("personalidentificationdata.personalId = :personalId", { personalId })
          .getOne();
      }
}