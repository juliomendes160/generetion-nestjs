import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Postagem } from './postagem/entities/postagem.entity';
import { PostagemModule } from './postagem/postagem.module';

@Module({
	imports: [
		TypeOrmModule.forRoot({
			type: 'mysql',
			host: process.env.DB_HOST || 'localhost',
			port: Number(process.env.DB_PORT) || 3306,
			username: process.env.DB_USERNAME || 'root',
			password: process.env.DB_PASSWORD || 'root',
			database: process.env.DB_NAME || 'db_blogpessoal',
			entities: [Postagem],
			synchronize: true,
			logging: true,
		})
  	],
	controllers: [],
	providers: [],
})
export class AppModule { }
