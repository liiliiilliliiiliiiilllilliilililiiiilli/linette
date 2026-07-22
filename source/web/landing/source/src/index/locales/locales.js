// File for text translations

import i18n from 'i18next'
import LanguageDetector from 'i18next-browser-languagedetector'
import { initReactI18next } from 'react-i18next'

import ru from './languages/ru.json'
import en from './languages/en.json'
import zh from './languages/zh.json'



i18n

	.use (LanguageDetector)

	.use (initReactI18next)

	.init ({

		resources: {

			'ru': {

				translation: ru

			},

			'en': {

				translation: en

			},

			'zh': {

				translation: zh

			}

		},

		fallbackLng: 'en',

		returnObjects: true,

		interpolation: {

			escapeValue: false

		}

	})



export default i18n