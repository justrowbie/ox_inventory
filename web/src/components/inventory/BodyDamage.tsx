import Body from '../utils/Body';
import { useAppSelector } from '../../store';

export default function BodyDamage() {
    const damagevar = useAppSelector((state) => state.damage.data)
    return (
        <Body
            detaileddata={damagevar}
        />
    )
}