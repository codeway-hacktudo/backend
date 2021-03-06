import { EntityRepository, Repository } from "typeorm";
import { PersonalDocuments } from "./PersonalDocuments";

@EntityRepository(PersonalDocuments)
export class PersonalDocumentsRepository extends Repository<PersonalDocuments> {
  findByCpfNumber(cpfNumber: string) {
    return this.createQueryBuilder("personaldocuments")
      .where("personaldocuments.cpfNumber = :cpfNumber", { cpfNumber })
      .getOne();
  }
}