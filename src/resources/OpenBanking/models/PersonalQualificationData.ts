import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "PersonalQualificationData" })
export class PersonalQualificationData {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    updateDateTime!:string;
    @Column
    companyCnpj!:string;
    @Column
    occupationCode!:string;
    @Column
    occupationDescription!:string;
    @Column
    informedIncomeFrequency!:string;
    @Column
    informedIncomeAmount!:string;
    @Column
    informedIncomeCurrency!:string;
    @Column
    informedIncomeDate!:string;
    @Column
    informedPatrimonyAmount!:string;
    @Column
    informedPatrimonyCurrency!:string;
    @Column
    informedPatrimonyYear!:string;
    @Column
    personalId!:string;
}