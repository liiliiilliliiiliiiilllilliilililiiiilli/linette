// Components - Description

import { rem } from '../../libraries/q.js'



const Description = () => {

	return (

		<text style = {{
			color: 'white',
			fontFamily: 'system-ui',
			fontWeight: 'light',
			fontSize: rem (30),
			textAlign: 'center',
			whiteSpace: 'pre-line'
		}}>

			{`Боль передается из поколения в поколение. Мы не выбирали эту боль.
			У меня появился план, как разорвать круг боли.
			Разорвать, чтобы освободиться.`}

		</text>

	)

}



export { Description }