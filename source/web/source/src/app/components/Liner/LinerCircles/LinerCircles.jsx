// Components - Liner circles

import { CircleBottomSmall } from '../../Circle/CircleBottomSmall/CircleBottomSmall'
import { CircleBottomBig } from '../../Circle/CircleBottomBig/CircleBottomBig'

import pictureTelegram from '../../../pictures/circle_bottom_small_telegram.png'
import pictureGithub from '../../../pictures/circle_bottom_small_github.png'
import picturePlaymarket from '../../../pictures/circle_bottom_small_playmarket.png'
import pictureAppstore from '../../../pictures/circle_bottom_small_appstore.png'
import pictureGmail from '../../../pictures/circle_bottom_small_gmail.png'
import pictureLi from '../../../pictures/circle_bottom_big.png'



const LinerCircles = () => {

	const Line = () => {

		return (

			<div style = {{
				position: 'relative',
				width: '100%',
				height: 3,
				top: '50%',
				borderRadius: '100%',
				background: '#363636'
			}}/>

		)

	}


	const Circles = () => {

		return (

			<div style = {{
				display: 'flex',
				flexDirection: 'row',
				alignItems: 'center',
				justifyContent: 'center',
				gap: 40,
				paddingLeft: 25,
				paddingRight: 25
			}}>

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

		<div style = {{
			display: 'flex',
			flexDirection: 'column',
			alignItems: 'center',
			justifyContent: 'center',
			width: '100%',
			paddingBottom: 58
		}}>

			<Line/>
			<Circles/>

		</div>

	)

}



export { LinerCircles }