// Components - Liner bubbles

import { BubbleBottomSmall } from '@components/Bubble/BubbleBottomSmall/BubbleBottomSmall'
import { BubbleBottomBig } from '@components/Bubble/BubbleBottomBig/BubbleBottomBig'

import pictureTelegram from '@pictures/telegram.png'
import pictureGithub from '@pictures/github.png'
import picturePlaystore from '@pictures/playstore.png'
import pictureAppstore from '@pictures/appstore.png'
import pictureGmail from '@pictures/gmail.png'
import pictureLi from '@pictures/li.png'

import style from './style/style.module.sass'



const LinerBubbles = () => {

	const Line = () => {

		return (

			<div className = {style.Line}/>

		)

	}


	const Bubbles = () => {

		return (

			<div className = {style.Bubbles}>

				<BubbleBottomSmall
					picture = {pictureTelegram}
					link = {'https://t.me/LinetteTelegramChannel'}
				/>

				<BubbleBottomBig
					picture = {pictureLi}
					link = {'https://t.me/liiliiilliliiiliiiilllilliililil'}
				/>

				<BubbleBottomSmall
					picture = {pictureGithub}
					link = {'https://github.com/liiliiilliliiiliiiilllilliilililiiiilli/linette'}
				/>

				{/* <BubbleBottomSmall
					picture = {picturePlaystore}
					link = {'https://playstore.com'}
				/> */}

				{/* <BubbleBottomSmall
					picture = {pictureAppstore}
					link = {'https://appstore.com'}
				/> */}

				{/* <BubbleBottomSmall
					picture = {pictureGmail}
					link = {'https://gmail.com'}
				/> */}

			</div>

		)

	}


	return (

		<div className = {style.LinerBubbles}>

			<Line/>

			<Bubbles/>

		</div>

	)

}



export { LinerBubbles }