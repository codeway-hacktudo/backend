import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "BusinessOtherDocument" })
export class BusinessOtherDocument {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    type!:string;
    @Column
    number!:string;
    @Column
    country!:string;
    @Column
    expirationDate!:string;
    @Column
    businessId!:string;
}