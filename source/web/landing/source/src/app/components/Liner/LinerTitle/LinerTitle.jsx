// Components - Liner text

import style from './style/style.module.sass'



const LinerTitle = ({text}) => {

	const Line = () => {

		return (

			<div className = {style.Line}/>

		)

	}


	const Title = () => {

		return (

			<div className = {style.Title}>

				<text className = {style.Text}>

					{`· ${text} ·`}

				</text>

			</div>

		)

	}


	return (

		<div className = {style.LinerTitle}>

			<Line/>
			<Title/>

		</div>

	)

}



export default LinerTitle