export default function DamagePercent({percent, styles, label}: {percent: number, styles?: React.CSSProperties, label?: string}) {
    return (
        <div style={styles}>
            <div style={{ marginLeft: '0.2vw' }}>
                {label}
            </div>
            <div style={{ marginLeft: '0.2vw', border: '1px solid #10111380', borderRadius: '0.2vw' }}>
                <div
                    style={{
                        height: '0.2vw',
                        width: `${percent}%`,
                        borderRadius: '0.2vw',
                        backgroundColor: '#E03131',
                        transition: `background ${0.3}s ease, width ${0.3}s ease`,
                    }}
                >
                </div>
            </div>
        </div>
    )
}