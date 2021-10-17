import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "nationality" })
export class Nationality {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    otherNationalitiesInfo!:string;
    @Column
    type!:string;
    @Column
    number!:string;
    @Column
    expirationDate!:string;
    @Column
    issueDate!:string;
    @Column
    country!:string;
    @Column
    typeAdditionalInfo!:string;
    @Column
    personalId!:string;