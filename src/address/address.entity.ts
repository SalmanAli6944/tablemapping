import { UnprocessableEntityException } from "@nestjs/common";
import { MaxLength, MinLength } from "class-validator";
import { Entity, Column, PrimaryGeneratedColumn, ManyToMany, ManyToOne } from 'typeorm';


@Entity()
export class Address {

    @PrimaryGeneratedColumn()
    Addressid: number;


    @Column({
        nullable: false,
    }

    )
    Location: string;
    @Column(
        {
            nullable: false,
        }
    )
    City:String;
    
   
}