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
    host: 'localhost',
    port: 5432,
    username: 'postgres',
    password: 'unza123',
    database: 'Abaadee',
    entities: [__dirname + '/**/*.entity{.ts,.js}'],
    synchronize: true,
  }),
   BuyModule, AddressModule, ImageModule,
   ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
