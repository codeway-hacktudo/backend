import { EntityRepository, Repository } from "typeorm";
import { Emails } from "./Emails";

@EntityRepository(Emails)
export class EmailsRepository extends Repository<EmailsRepository> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("Emails")
          .where("Emails.personalId = :personalId", { personalId })
          .getOne();
      }

    findByBusinessId(businessId: string) {
    return this.createQueryBuilder("Emails")
        .where("Emails.businessId = :businessId", { businessId })
        .getOne();
    }
}