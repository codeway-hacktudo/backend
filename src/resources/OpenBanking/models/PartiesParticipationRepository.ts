import { EntityRepository, Repository } from "typeorm";
import { PartiesParticipation } from "./PartiesParticipation";

@EntityRepository(PartiesParticipation)
export class PartiesParticipationRepository extends Repository<PartiesParticipation> {
    findByBusinessId(businessId: string) {
        return this.createQueryBuilder("PartiesParticipation")
          .where("PartiesParticipation.businessId = :businessId", { businessId })
          .getOne();
      }
}