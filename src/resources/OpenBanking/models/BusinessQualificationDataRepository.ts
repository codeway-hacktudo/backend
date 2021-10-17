import { EntityRepository, Repository } from "typeorm";
import { BusinessQualificationData } from "./BusinessQualificationData";

@EntityRepository(BusinessQualificationData)
export class BusinessQualificationDataRepository extends Repository<BusinessQualificationData> {
    findByBusinessId(businessId: string) {
        return this.createQueryBuilder("BusinessQualificationData")
          .where("BusinessQualificationData.businessId = :businessId", { businessId })
          .getOne();
      }
}