import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Partners {

    @PrimaryGeneratedColumn()
    Partners_id: number;


    @Column({
        nullable: false,
        length: 20,

    }


    )
    Partners_name: string;
    @Column(
        {
            nullable: false,
            length: 20,
        }
    )

    Contact: String;

    @Column({
        nullable: false,
        unique: true,
    })
    Email: String;





}

