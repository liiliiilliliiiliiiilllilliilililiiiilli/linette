// Components - Liner circles

import CircleBottomSmall from '@components/Circle/CircleBottomSmall/CircleBottomSmall'
import CircleBottomBig from '@components/Circle/CircleBottomBig/CircleBottomBig'

import pictureTelegram from '@pictures/telegram.png'
import pictureGithub from '@pictures/github.png'
import picturePlaystore from '@pictures/playstore.png'
import pictureAppstore from '@pictures/appstore.png'
import pictureGmail from '@pictures/gmail.png'
import pictureLi from '@pictures/li.png'

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
					picture = {picturePlaystore}
					link = {'https://playstore.com'}
				/> */}

				{/* <CircleBottomSmall
					picture = {pictureAppstore}
					link = {'https://appstore.com'}
				/> */}

				{/* <CircleBottomSmall
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



export default LinerCircles