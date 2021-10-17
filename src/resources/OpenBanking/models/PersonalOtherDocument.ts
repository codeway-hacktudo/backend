import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "PersonalOtherDocument" })
export class PersonalOtherDocument {

    @PrimaryGeneratedColumn
    id!:number;
    @Column
    type!: string;
    @Column
    typeAdditionalInfo!: string;
    @Column
    number!: string;
    @Column
    checkDigit!: string;
    @Column
    additionalInfo!: string;
    @Column
    expirationDate!: string;
    @Column
    personalId!: string;  

}