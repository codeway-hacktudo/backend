import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity({ name: "PostalAddress" })
export class PostalAddress {
    @PrimaryGeneratedColumn
    id!:number;
    @Column
    isMain!:string;
    @Column
    address!:string;
    @Column
    additionalInfo!:string;
    @Column
    districtName!:string;
    @Column
    townName!:string;
    @Column
    ibgeTownCode!:string;
    @Column
    countrySubDivision!:string;
    @Column
    postCode!:string;
    @Column
    country!:string;
    @Column
    countryCode!:string;
    @Column
    personalId!:string;
    @Column
    businessId!:string;
}