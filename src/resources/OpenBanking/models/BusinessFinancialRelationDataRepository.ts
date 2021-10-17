import { EntityRepository, Repository } from "typeorm";
import { BusinessFinancialRelationData } from "./BusinessFinancialRelationData";

@EntityRepository(BusinessFinancialRelationData)
export class BusinessFinancialRelationDataRepository extends Repository<BusinessFinancialRelationData> {
    findByBusinessId(businessId: string) {
        return this.createQueryBuilder("BusinessFinancialRelationData")
          .where("BusinessFinancialRelationData.businessId = :businessId", { businessId })
          .getOne();
      }
}