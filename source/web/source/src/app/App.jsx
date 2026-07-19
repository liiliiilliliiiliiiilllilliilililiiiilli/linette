// Main application file

import { Background } from './components/Background/Background'
import { CircleTop } from './components/Circle/CircleTop/CircleTop'
import { Title } from './components/Title/Title'
import { Description } from './components/Description/Description'
import { LinerTitle } from './components/Liner/LinerTitle/LinerTitle'
import { LinerCircles } from './components/Liner/LinerCircles/LinerCircles'
import { TextBlock } from './components/TextBlock/TextBlock'
import { TextBlockState } from './components/TextBlockState/TextBlockState'
import { Arrow } from './components/Arrow/Arrow'
import { End } from './components/End/End'

import { text } from './libraries/text'

import style from './style/style.module.sass'



const App = () => {

	const Top = () => {

		return (

			<div className = {style.Top}>

				<CircleTop/>
				<Title/>
				<Description/>

			</div>

		)

	}


	const Section_1 = () => {

		return (

			<div className = {style.Section_1}>

				<LinerTitle
					text = {text.liner.idea}
				/>

				<TextBlock
					text = {text.block.idea}
					width = {1000}
				/>

			</div>

		)

	}


	const Section_2 = () => {

		return (

			<div className = {style.Section_2}>

				<LinerTitle text = {text.liner.plan}/>

				<div className = {style.Scrolls}>

					<TextBlock
						text = {text.block.plan_steps_saving}
						width = {500}
						isCentralized = {true}
					/>

					<Arrow/>

					<TextBlock
						text = {text.block.plan_steps_generation}
						width = {500}
						isCentralized = {true}
					/>

					<Arrow/>

					<TextBlock
						text = {text.block.plan_steps_scaling}
						width = {500}
						isCentralized = {true}
					/>

				</div>

				<TextBlock
					text = {text.block.plan_result}
					width = {1000}
				/>

			</div>

		)

	}


	const Section_3 = () => {

		return (

			<div className = {style.Section_3}>

				<LinerTitle text = {text.liner.youHelp}/>

				<TextBlock
					text = {text.block.youHelp_useApp}
					width = {1000}
				/>

				<TextBlockState
					width = {1000}
					text = {text.block.youHelp_projectState}
				/>

			</div>

		)

	}


	const Bottom = () => {

		return (

			<div className = {style.Bottom}>

				<End/>
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



export { App }