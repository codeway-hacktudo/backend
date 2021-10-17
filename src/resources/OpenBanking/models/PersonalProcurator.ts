import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "PersonalProcurator" })
export class PersonalProcurator {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    type!:string;
    @Column
    cpfNumber!:string;
    @Column
    civilName!:string;
    @Column
    socialName!:string;
    @Column
    personalId!:string;
}