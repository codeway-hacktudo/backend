import { EntityRepository, Repository } from "typeorm";
import { BusinessOtherDocument } from "./BusinessOtherDocument";

@EntityRepository(BusinessOtherDocument)
export class BusinessOtherDocumentRepository extends Repository<BusinessOtherDocument> {
    findByBusinessId(businessId: string) {
        return this.createQueryBuilder("BusinessOtherDocument")
          .where("BusinessOtherDocument.businessId = :businessId", { businessId })
          .getOne();
      }
}