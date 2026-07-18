import path from 'node:path'
import { resolve } from 'path'
import { defineConfig } from 'vite'
import react, { reactCompilerPreset } from '@vitejs/plugin-react'
import babel from '@rolldown/plugin-babel'



export default defineConfig ({

	plugins: [

		react (),
		babel ({presets: [reactCompilerPreset ()]})

	],

	root: resolve (__dirname, 'src/index'),  // Указываем новую корневую директорию для Vite

	build: {

		outDir: resolve (__dirname, 'build'),  // Указываем, что папка сборки build должна быть в корне проекта
		emptyOutDir: true  // Очищаем папку build перед каждой новой сборкой

	},

	resolve: {

		alias: {

			'@app': resolve (__dirname, 'src/app'),  // Настраиваем алиас для удобного импорта из папки app (которая теперь выше уровнем)
			'@style': path.resolve(__dirname, 'src/app/style')

		}

	}

})