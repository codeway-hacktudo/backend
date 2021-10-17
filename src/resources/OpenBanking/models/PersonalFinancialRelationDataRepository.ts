import { EntityRepository, Repository } from "typeorm";
import { PersonalFinancialRelationData } from "./PersonalFinancialRelationData";

@EntityRepository(PersonalFinancialRelationData)
export class PersonalFinancialRelationDataRepository extends Repository<PersonalFinancialRelationData> {
  findByPersonalId(personalId: string) {
    return this.createQueryBuilder("PersonalFinancialRelationData")
      .where("PersonalFinancialRelationData.personalId = :personalId", { personalId })
      .getOne();
  }
}