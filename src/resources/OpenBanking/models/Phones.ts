import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "Phones" })
export class Phones {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    isMain!:string;
    @Column
    type!:string;
    @Column
    additionalInfo!:string;
    @Column
    countryCallingCode!:string;
    @Column
    areaCode!:string;
    @Column
    number!:string;
    @Column
    phoneExtension!:string;
    @Column
    personalId!:string;
    @Column
    businessId!:string;
}