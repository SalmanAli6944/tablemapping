import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Wanted {

    @PrimaryGeneratedColumn()
    Wanted_id: number;


    @Column({
        nullable: false,
        length: 20,

    }


    )
    Price: string;
    @Column(
        {
            nullable: false,
            length:20,
        }
    )

    Phone_number: String;
    @Column({
        nullable: false,
        length:10,

    })

    NoOfRooms: String;
    @Column({
        nullable: false,
        length:10,
    
    }
    )
    Property_type: String;
    @Column({
        nullable: false,
        length:50,
        
    })
    AreaUnit: string;
   


}

