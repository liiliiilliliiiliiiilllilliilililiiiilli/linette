// File for all texts

import i18n from 'i18next'
import LanguageDetector from 'i18next-browser-languagedetector'
import { initReactI18next } from 'react-i18next'

import ru from './locales/ru.json'
import en from './locales/en.json'
import zh from './locales/zh.json'



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