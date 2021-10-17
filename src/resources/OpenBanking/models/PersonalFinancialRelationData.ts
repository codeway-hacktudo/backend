import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "PersonalFinancialRelationData" })
export class PersonalFinancialRelationData {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    pdateDateTime!:string;
    @Column
    startDate!:string;
    @Column
    productsServicesType!:string;
    @Column
    productsServicesTypeAdditionalInfo!:string;
    @Column
    accountsCompeCode!:string;
    @Column
    accountsBranchCode!:string;
    @Column
    accountsNumber!:string;
    @Column
    accountsCheckDigit!:string;
    @Column
    accountsType!:string;
    @Column
    accountsSubtype!:string;
    @Column
    personalId!:string;
}