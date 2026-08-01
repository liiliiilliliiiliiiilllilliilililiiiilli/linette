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
			'@components': resolve (__dirname, 'src/common/components'),
			'@hooks': resolve (__dirname, 'src/common/hooks'),
			'@pictures': resolve (__dirname, 'src/common/pictures'),
			'@texts': resolve (__dirname, 'src/common/texts'),
			'@styles': resolve (__dirname, 'src/common/styles')

		}

	}

})