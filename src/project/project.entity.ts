import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Project {

    @PrimaryGeneratedColumn()
    Project_id: number;


    @Column({
        nullable: false,
        length: 40,

    }


    )
    Project_Name: string;
    @Column(
        {
            nullable: false,
            length:20,
        }
    )

    Property_Type: String;
   
    @Column({
        nullable: false,
        length:10,
    
    }
    )
    AreaUnit: String;
    @Column({
        nullable: false,
        length:50,
        
    })
    Company_Name: string;
   


}

