import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "Emails" })
export class Emails {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    isMain!:string;
    @Column
    email!:string;
    @Column
    personalId!:string;
    @Column
    businessId!:string;
}