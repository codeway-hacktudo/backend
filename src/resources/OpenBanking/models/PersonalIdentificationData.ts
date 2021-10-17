import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "personalidentificationdata" })
export class PersonalIdentificationData {

    @Column
    updateDateTime!: string; 
    @Column
    personalId!: string;
    @Column
    brandName!: string;
    @Column
    civilName!: string;
    @Column
    socialName!: string;
    @Column
    birthDate!: string;
    @Column
    maritalStatusCode!: string;
    @Column
    maritalStatusAdditionalInfo!: string;
    @Column
    sex!: string;
    @Column
    companyCnpj!: string;
    @Column
    hasBrazilianNationality!: string;  

}