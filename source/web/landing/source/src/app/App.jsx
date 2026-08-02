// Main application file

import { useTranslation } from 'react-i18next'
import { useAutotunePageTitle } from '@hooks/UseAutotunePageTitle'

import { Background } from '@components/Background/Background'
import { BubbleTop } from '@components/Bubble/BubbleTop/BubbleTop'
import { Title } from '@components/Title/Title'
import { Description } from '@components/Description/Description'
import { LinerTitle } from '@components/Liner/LinerTitle/LinerTitle'
import { LinerBubbles } from '@components/Liner/LinerBubbles/LinerBubbles'
import { TextBlock } from '@components/TextBlock/TextBlock'
import { TextBlockHistory } from '@components/TextBlockHistory/TextBlockHistory'
import { Arrow } from '@components/Arrow/Arrow'
import { Conclusion } from '@components/Conclusion/Conclusion'

import style from './style/style.module.sass'



const App = () => {

	const {t} = useTranslation ()

	useAutotunePageTitle ()


	const Top = () => {

		return (

			<div className = {style.Top}>

				<BubbleTop/>

				<Title/>

				<Description text = {t('description')}/>

			</div>

		)

	}


	const Idea = () => {

		return (

			<div className = {style.Idea}>

				<LinerTitle text = {t('liner.idea')}/>

				<TextBlock
					text = {t('block.idea')}
					width = {1000}
				/>

			</div>

		)

	}


	const Plan = () => {

		return (

			<div className = {style.Plan}>

				<LinerTitle text = {t('liner.plan')}/>

				<div className = {style.Scrolls}>

					<TextBlock
						text = {t('block.plan.steps.saving')}
						width = {500}
						isCentralized = {true}
					/>

					<Arrow/>

					<TextBlock
						text = {t('block.plan.steps.generation')}
						width = {500}
						isCentralized = {true}
					/>

					<Arrow/>

					<TextBlock
						text = {t('block.plan.steps.scaling')}
						width = {500}
						isCentralized = {true}
					/>

				</div>

				<TextBlock
					text = {t('block.plan.result')}
					width = {1000}
				/>

			</div>

		)

	}


	const YouHelp = () => {

		return (

			<div className = {style.YouHelp}>

				<LinerTitle text = {t('liner.youHelp')}/>

				<TextBlock
					text = {t('block.youHelp.useApp')}
					width = {1000}
				/>

				<TextBlockHistory
					width = {1000}
					text = {t('block.youHelp.projectState')}
				/>

			</div>

		)

	}


	const Bottom = () => {

		return (

			<div className = {style.Bottom}>

				<Conclusion text = {t('conclusion')}/>

				<LinerBubbles/>

			</div>

		)

	}


	return (

		<Background>

			<Top/>

			<Idea/>

			<Plan/>

			<YouHelp/>

			<Bottom/>

		</Background>

	)

}



export { App }