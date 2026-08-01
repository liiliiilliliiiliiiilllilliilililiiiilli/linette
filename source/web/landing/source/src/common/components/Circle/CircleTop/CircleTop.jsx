// Components - Circle top

import pictureLinette from '@pictures/linette.png'

import style from './style/style.module.sass'



const CircleTop = () => {

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



export { CircleTop }