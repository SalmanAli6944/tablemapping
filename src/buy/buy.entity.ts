import { UnprocessableEntityException } from "@nestjs/common";
import { Address } from "cluster";
import { Image } from "src/image/image.entity";
import { Entity, Column, PrimaryGeneratedColumn, OneToOne, JoinColumn, OneToMany, } from 'typeorm';


@Entity()
export class Buy {

    @PrimaryGeneratedColumn()
    Buyid: number;


    @Column({
        nullable: false,

    }


    )
    Title: string;
    @Column(
        {
            nullable: false,
            length:200,
        }
    )

    Description: String;
    @Column({
        nullable: false,

    })

    PropertyType: String;
    @Column({
        nullable: false,
    
    }
    )
    AreaGrid: String;
    @Column({
        nullable: false,
        
    })
    Size: number;
    @Column({
        nullable: false,
        
    })
    Beds: number;
    @Column({
        nullable: false,
    
    })
    TotalRooms: number;
    @Column({
        nullable: false,
        
    })
    Bathroom: number;
    @Column({
        nullable: false,
        
    })
    Phone_No: String;
    @Column({
        nullable: false,
        unique: true,
    })
    Email: String;
    @Column({
        nullable: false,
        
    })
    price:string;

   
@OneToOne(()=>Image)
@JoinColumn()
Images:Image;


}

