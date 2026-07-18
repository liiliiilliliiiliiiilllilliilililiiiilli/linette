// Components - Circle top

import style from './style/style.module.sass'

import pictureLinette from '../../../pictures/circle_top.png'



const CircleTop = () => {

	return (

		<div className = {style.RingOut}>

			<div className = {style.RingIn}>

				<img
					src = {pictureLinette}
					alt = 'User Profile'
					className = {style.Picture}
				/>

			</div>

		</div>

	)

}



export { CircleTop }