import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Rent {

    @PrimaryGeneratedColumn()
    Rent_id: number;


    @Column({
        nullable: false,
        length: 10,

    }


    )
    Price: string;
    @Column(
        {
            nullable: false,
            length:20,
            unique:true,
        }
    )

    Phone_Number: String;
    @Column({
        nullable: false,

    })

    No_Of_Rooms: number;
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
    Property_type: string;
   


}

