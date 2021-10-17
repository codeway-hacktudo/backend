import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "BusinessQualificationData" })
export class BusinessQualificationData {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    updateDateTime!:string;
    @Column
    economicActivitiesCode!:string;
    @Column
    economicActivitiesIsMain!:string;
    @Column
    informedRevenueFrequency!:string;
    @Column
    informedRevenueFrequencyAdditionalInfo!:string;
    @Column
    informedRevenueAmount!:string;
    @Column
    informedRevenueCurrency!:string;
    @Column
    informedRevenueYear!:string;
    @Column
    informedPatrimonyAmount!:string;
    @Column
    informedPatrimonyCurrency!:string;
    @Column
    informedPatrimonyDate!:string;
    @Column
    businessId!:string;
}