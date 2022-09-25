import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    const env = process.env.NODE_ENV;
    const env2 = process.env.PAUL;
    console.log('loglogloglogF');
    return env + '444444444' + env2;
  }
}
