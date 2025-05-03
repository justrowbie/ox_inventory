import Body from "../../utils/body";
import { useAppSelector } from "../../store";

export default function BodyDamage() {
    const damagevar = useAppSelector((state) => state.damage.data)
    return (
        <div style={{scale: "90%", marginLeft: "40px", marginBottom: "-40px", marginTop: "40px", fontSize: "12px"}}>
            <Body
                detaileddata={damagevar}
            />
        </div>
    )
}