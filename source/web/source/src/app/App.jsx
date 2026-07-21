// Main application file

import Background from '@components/Background/Background'
import CircleTop from '@components/Circle/CircleTop/CircleTop'
import Title from '@components/Title/Title'
import Description from '@components/Description/Description'
import LinerTitle from '@components/Liner/LinerTitle/LinerTitle'
import LinerCircles from '@components/Liner/LinerCircles/LinerCircles'
import TextBlock from '@components/TextBlock/TextBlock'
import TextBlockState from '@components/TextBlockState/TextBlockState'
import Arrow from '@components/Arrow/Arrow'
import End from '@components/End/End'

import { useTranslation } from 'react-i18next'

import style from './style/style.module.sass'



const App = () => {

	const {t} = useTranslation ()


	const Top = () => {

		return (

			<div className = {style.Top}>

				<CircleTop/>
				<Title/>
				<Description text = {t ('description')}/>

			</div>

		)

	}


	const Section_1 = () => {

		return (

			<div className = {style.Section_1}>

				<LinerTitle text = {t ('liner.idea')}/>

				<TextBlock
					text = {t ('block.idea')}
					width = {1000}
				/>

			</div>

		)

	}


	const Section_2 = () => {

		return (

			<div className = {style.Section_2}>

				<LinerTitle text = {t ('liner.plan')}/>

				<div className = {style.Scrolls}>

					<TextBlock
						text = {t ('block.plan.steps.saving')}
						width = {500}
						isCentralized = {true}
					/>

					<Arrow/>

					<TextBlock
						text = {t ('block.plan.steps.generation')}
						width = {500}
						isCentralized = {true}
					/>

					<Arrow/>

					<TextBlock
						text = {t ('block.plan.steps.scaling')}
						width = {500}
						isCentralized = {true}
					/>

				</div>

				<TextBlock
					text = {t ('block.plan.result')}
					width = {1000}
				/>

			</div>

		)

	}


	const Section_3 = () => {

		return (

			<div className = {style.Section_3}>

				<LinerTitle text = {t ('liner.youHelp')}/>

				<TextBlock
					text = {t ('block.youHelp.useApp')}
					width = {1000}
				/>

				<TextBlockState
					width = {1000}
					text = {t ('block.youHelp.projectState')}
				/>

			</div>

		)

	}


	const Bottom = () => {

		return (

			<div className = {style.Bottom}>

				<End text = {t ('end')}/>
				<LinerCircles/>

			</div>

		)

	}


	return (

		<Background>

			<Top/>
			<Section_1/>
			<Section_2/>
			<Section_3/>
			<Bottom/>

		</Background>

	)

}



export default App