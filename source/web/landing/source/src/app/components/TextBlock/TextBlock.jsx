// Components - Text block

import style from './style/style.module.sass'



const TextBlock = ({text, width, isCentralized = false}) => {

	return (

		<div
			className = {style.TextBlock}
			style = {{width: width}}
		>

			{text.map ((paragraph, index) => (

				<>

					{index >= 1 ? <div style = {{height: '1rem'}}/> : <></>}

					<text
						className = {style.Title}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.title}

					</text>

					<text
						className = {style.Text}
						style = {{textAlign: !isCentralized ? 'left' : 'center'}}
					>

						{paragraph.text}

					</text>

				</>

			))}

		</div>

	)

}



export default TextBlock