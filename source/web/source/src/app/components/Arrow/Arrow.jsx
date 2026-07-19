// Components - Arrow

import pictureArrow from '../../pictures/arrow_grey.svg'

import style from './style/style.module.sass'



const Arrow = () => {

	return (

		<div className = {style.Container}>

			<div className = {style.Arrow}>

				<img
					src = {pictureArrow}
					alt = 'стрелка'
					className = {style.Picture}/>

			</div>

		</div>

	)

}



export { Arrow }