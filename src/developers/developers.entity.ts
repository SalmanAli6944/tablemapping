import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Developers {

    @PrimaryGeneratedColumn()
    Did: number;


    @Column({
        nullable: false,

    }


    )
    Name: string;
    @Column(
        {
            nullable: false,
            length:100,
        }
    )

    Address: String;
    @Column({
        nullable: false,
        length:20,

    })

    Phone_no: String;
    @Column({
        nullable: false,
        length:200,
    
    }
    )
    Website_link: String;
    @Column({
        nullable: false,
        unique:true,
        length:30,
        
    })
    Email: String;
    

}

