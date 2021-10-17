import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "BusinessIdentificationData" })
export class BusinessIdentificationData {
    @Column
    updateDateTime!:string;
    @Column
    businessId!:string;
    @Column
    brandName!:string;
    @Column
    companyName!:string;
    @Column
    tradeName!:string;
    @Column
    incorporationDate!:string;
    @Column
    cnpjNumber!:string;
    @Column
    companyCnpjNumber!:string;
}