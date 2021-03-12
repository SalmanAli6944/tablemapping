

import { UnprocessableEntityException } from "@nestjs/common";
import { MaxLength, MinLength } from "class-validator";
import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Image{
@PrimaryGeneratedColumn()
ImageId:String;
@Column(
    {
        nullable: false,
        unique:true,
    }
)
LogoImage:String;
@Column({
    nullable: false,
    unique:true,
})
CoverImage:String;
}

