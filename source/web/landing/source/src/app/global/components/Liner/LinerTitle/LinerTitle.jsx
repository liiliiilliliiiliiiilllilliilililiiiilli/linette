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

				<span className = {style.Points}>

					{'·'}

				</span>

				<span className = {style.Text}>

					{text}

				</span>

				<span className = {style.Points}>

					{'·'}

				</span>

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



export { LinerTitle }