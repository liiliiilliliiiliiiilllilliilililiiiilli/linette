// Components - Text block

import { Fragment } from 'react'

import style from './style/style.module.sass'



const TextBlock = ({text, width, isCentralized = false}) => {

	const styleMain = {

		width: width

	}

	const styleTitle = {

		textAlign: !isCentralized ? 'left' : 'center'

	}

	const styleParagraph = {

		textAlign: !isCentralized ? 'left' : 'center'

	}


	const Gap = () => {

		return (

			<div style = {{height: '1rem'}}/>

		)

	}


	return (

		<div
			className = {style.TextBlock}
			style = {styleMain}
		>

			{text.map ((content, index) => (

				<Fragment key = {index}>

					{index >= 1 ? <Gap/> : <></>}

					<span
						className = {style.Title}
						style = {styleTitle}
					>

						{content.title}

					</span>

					<span
						className = {style.Paragraph}
						style = {styleParagraph}
					>

						{content.paragraph}

					</span>

				</Fragment>

			))}

		</div>

	)

}



export { TextBlock }