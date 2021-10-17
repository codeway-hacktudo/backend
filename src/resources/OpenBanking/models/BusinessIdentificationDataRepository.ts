import { EntityRepository, Repository } from "typeorm";
import { BusinessIdentificationData } from "./BusinessIdentificationData";

@EntityRepository(BusinessIdentificationData)
export class BusinessIdentificationDataRepository extends Repository<BusinessIdentificationData> {
    findByCnpjNumber(cnpjNumber: string) {
        return this.createQueryBuilder("BusinessIdentificationData")
          .where("BusinessIdentificationData.cnpjNumber = :cnpjNumber", { cnpjNumber })
          .getOne();
      }
}