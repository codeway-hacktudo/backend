import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "Filiation" })
export class Filiation {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    type!: string; 
    @Column
    civilName!: string; 
    @Column
    socialName!: string;
    @Column
    personalId!: string;
}