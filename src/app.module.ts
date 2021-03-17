import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { BuyModule } from './buy/buy.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { AddressModule } from './address/address.module';
import { ImageModule } from './image/image.module';

@Module({
  imports: [TypeOrmModule.forRoot({
    type: 'postgres',
    host: 'ec2-3-222-11-129.compute-1.amazonaws.com',
    port: 5432,
    username: 'mcweqqlajdtnpj',
    password: '0bb2c90b36880ba4780d159c9bfee2dddda47cf9b603cdcaf069c19b28efd617',
    database: 'd8pvmk362u8bif',
    entities: [__dirname + '/**/*.entity{.ts,.js}'],
    synchronize: true,
  }),
   BuyModule, AddressModule, ImageModule,
   ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
