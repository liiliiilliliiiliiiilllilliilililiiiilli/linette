// Components - Title

import { rem } from '../../libraries/q.js'



const Title = () => {

	return (

		<text style = {{
			textAlign: 'center',
			fontFamily: 'Baskervville',
			fontWeight: 'bold',
			fontSize: rem (47),
			color: 'white'
		}}>

			{`Linette`}

		</text>

	)

}



export { Title }