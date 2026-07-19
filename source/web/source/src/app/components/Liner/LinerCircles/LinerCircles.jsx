// Components - Liner circles

import { CircleBottomSmall } from '../../Circle/CircleBottomSmall/CircleBottomSmall'
import { CircleBottomBig } from '../../Circle/CircleBottomBig/CircleBottomBig'

import pictureTelegram from '../../../pictures/circle_bottom_small_telegram.png'
import pictureGithub from '../../../pictures/circle_bottom_small_github.png'
import picturePlaymarket from '../../../pictures/circle_bottom_small_playstore.png'
import pictureAppstore from '../../../pictures/circle_bottom_small_appstore.png'
import pictureGmail from '../../../pictures/circle_bottom_small_gmail.png'
import pictureLi from '../../../pictures/circle_bottom_big.png'

import style from './style/style.module.sass'



const LinerCircles = () => {

	const Line = () => {

		return (

			<div className = {style.Line}/>

		)

	}


	const Circles = () => {

		return (

			<div className = {style.Circles}>

				<CircleBottomSmall
					picture = {pictureTelegram}
					link = {'https://t.me/LinetteTelegramChannel'}
				/>

				<CircleBottomBig
					picture = {pictureLi}
					link = {'https://t.me/liiliiilliliiiliiiilllilliililil'}
				/>

				<CircleBottomSmall
					picture = {pictureGithub}
					link = {'https://github.com/liiliiilliliiiliiiilllilliilililiiiilli/linette'}
				/>

				{/* <CircleBottomSmall
					picture = {picturePlaymarket}
					link = {'https://playmarket.com'}
				/>

				<CircleBottomSmall
					picture = {pictureAppstore}
					link = {'https://appstore.com'}
				/>

				<CircleBottomSmall
					picture = {pictureGmail}
					link = {'https://gmail.com'}
				/> */}

			</div>

		)

	}


	return (

		<div className = {style.LinerCircles}>

			<Line/>
			<Circles/>

		</div>

	)

}



export { LinerCircles }