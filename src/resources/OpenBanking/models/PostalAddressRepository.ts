import { EntityRepository, Repository } from "typeorm";
import { PostalAddress } from "./PostalAddress";

@EntityRepository(PostalAddress)
export class PostalAddressRepository extends Repository<PostalAddressRepository> {
    findByPersonalId(personalId: string) {
        return this.createQueryBuilder("PostalAddress")
          .where("PostalAddress.personalId = :personalId", { personalId })
          .getOne();
      }

    findByBusinessId(businessId: string) {
    return this.createQueryBuilder("PostalAddress")
        .where("PostalAddress.businessId = :businessId", { businessId })
        .getOne();
    }
}