// Project builder configuration file

import { resolve } from 'path'
import { defineConfig } from 'vite'
import react, { reactCompilerPreset } from '@vitejs/plugin-react'
import babel from '@rolldown/plugin-babel'



export default defineConfig ({

	plugins: [

		react (),
		babel ({presets: [reactCompilerPreset ()]})

	],

	root: resolve (__dirname, 'src/index'),

	build: {

		outDir: resolve (__dirname, 'build'),
		emptyOutDir: true

	},

	resolve: {

		alias: {

			'@app': resolve (__dirname, 'src/app'),
			'@index': resolve (__dirname, 'src/index'),
			'@components': resolve (__dirname, 'src/app/components'),
			'@pictures': resolve (__dirname, 'src/app/pictures'),
			'@texts': resolve (__dirname, 'src/app/texts'),
			'@style': resolve (__dirname, 'src/app/style')

		}

	}

})