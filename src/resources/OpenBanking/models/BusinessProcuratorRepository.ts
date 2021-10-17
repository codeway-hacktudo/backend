import { EntityRepository, Repository } from "typeorm";
import { BusinessProcurator } from "./BusinessProcurator";

@EntityRepository(BusinessProcurator)
export class BusinessProcuratorRepository extends Repository<BusinessProcurator> {
    findByBusinessId(businessId: string) {
        return this.createQueryBuilder("BusinessProcurator")
          .where("BusinessProcurator.businessId = :businessId", { businessId })
          .getOne();
      }
}