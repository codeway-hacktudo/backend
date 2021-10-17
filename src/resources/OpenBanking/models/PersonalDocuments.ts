import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "personaldocuments" })
export class PersonalDocuments {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    cpfNumber!:string;
    @Column
    passportNumber!:string;
    @Column
    passportCountry!:string;
    @Column
    passportExpirationDate!:string;
    @Column
    passportIssueDate!:string;
    @Column
    personalId!:string;
}