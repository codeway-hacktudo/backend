import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "PartiesParticipation" })
export class PartiesParticipation {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    personType!:string;
    @Column
    type!:string;
    @Column
    civilName!:string;
    @Column
    socialName!:string;
    @Column
    companyName!:string;
    @Column
    tradeName!:string;
    @Column
    startDate!:string;
    @Column
    shareholding!:string;
    @Column
    documentType!:string;
    @Column
    documentNumber!:string;
    @Column
    documentAdditionalInfo!:string;
    @Column
    documentCountry!:string;
    @Column
    documentExpirationDate!:string;
    @Column
    documentIssueDate!:string;
    @Column
    businessId!:string;
}