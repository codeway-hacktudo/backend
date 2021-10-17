import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "BusinessProcurator" })
export class BusinessProcurator {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    type!:string;
    @Column
    cnpjCpfNumber!:string;
    @Column
    civilName!:string;
    @Column
    socialName!:string;
    @Column
    businessId!:string;
}