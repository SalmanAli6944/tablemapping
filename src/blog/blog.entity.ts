import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Blog {

    @PrimaryGeneratedColumn()
    blogid: number;


    @Column({
        nullable: false,

    }


    )
    content: string;
    @Column(
        {
            nullable: false,
            length: 200,
        }
    )

    Description: String;


}

