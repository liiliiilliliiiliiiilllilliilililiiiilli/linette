// Components - Bubble top

import pictureLinette from '@pictures/linette.png'

import style from './style/style.module.sass'



const BubbleTop = () => {

	return (

		<div className = {style.RingOut}>

			<div className = {style.RingIn}>

				<img
					src = {pictureLinette}
					alt = 'Linette'
					draggable = {false}
					className = {style.Picture}
				/>

			</div>

		</div>

	)

}



export { BubbleTop }