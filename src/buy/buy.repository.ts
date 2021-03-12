import { Buy } from "./buy.entity";
import {Repository,EntityRepository} from 'typeorm';






@EntityRepository(Buy)
export class BuyRepository extends Repository<Buy>{}
