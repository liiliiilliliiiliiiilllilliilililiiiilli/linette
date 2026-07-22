// File for all texts

import i18n from 'i18next'
import LanguageDetector from 'i18next-browser-languagedetector'
import { initReactI18next } from 'react-i18next'

import ru from './localisations/ru.json'
import en from './localisations/en.json'
import zh from './localisations/zh.json'



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