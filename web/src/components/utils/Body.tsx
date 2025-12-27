import { flip, FloatingPortal, offset, shift, useFloating, useTransitionStyles } from '@floating-ui/react';
import React from 'react';
import { debugData } from '../../utils/debugData';
import { Locale } from '../../store/locale';
import { getAssetUrl } from '../../helpers';
import { useInventoryView } from '../inventory/InventoryViewContext';

debugData([
    {
        action: 'DamageCall',
        data: {
            HEAD: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            NECK: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            UPPER_BODY: {
                severity: false,
                percent: 40,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            LOWER_BODY: {
                severity: false,
                percent: 0,
                bullets: 5,
                broken: false,
                bleeding: false,
            },
            SPINE: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            LARM: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            RFOOT: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            RHAND: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            LFOOT: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            RLEG: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: true,
            },
            LLEG: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            LHAND: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            RARM: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
        }
    }
]);

export default function Body(
    { detaileddata }:
        { detaileddata: any }
) {
    React.useEffect(() => {
        const onMessage = (e: MessageEvent) => {
            if (e.data?.action === 'DamageCall') {
                setBodydamagecal(e.data.data);
            }
        };

        window.addEventListener('message', onMessage);
        return () => window.removeEventListener('message', onMessage);
    }, []);

    const [hoverData, setHoverData] = React.useState<boolean>(false);
    const [bodypart, setBodypart] = React.useState<string>("");
    const [bodylabel, setBodyLabel] = React.useState<string>("");
    const [bodydamagecal, setBodydamagecal] = React.useState<any>(detaileddata);

    const { refs, context, floatingStyles } = useFloating({
        middleware: [flip(), shift(), offset({ mainAxis: 15, crossAxis: -20 })],
        open: hoverData,
        placement: 'right-start',
    });

    const { isMounted, styles } = useTransitionStyles(context, {
        duration: 200,
    });

    const handleMouseMove = ({ clientX, clientY }: MouseEvent | React.MouseEvent<unknown, MouseEvent>) => {
        refs.setPositionReference({
            getBoundingClientRect() {
                return {
                    width: 0,
                    height: 0,
                    x: clientX,
                    y: clientY,
                    left: clientX,
                    top: clientY,
                    right: clientX,
                    bottom: clientY,
                };
            },
        });
    };

    React.useEffect(() => {
        window.addEventListener('mousemove', handleMouseMove);

        return () => {
            window.removeEventListener('mousemove', handleMouseMove);
        };
    }, []);

    const { setShowRightInventory, setShowBodyDamage } = useInventoryView();
    
    const for2k = window.innerWidth < 1920;
    
    return (
        <div className="body-container" >
            {isMounted && (
                <FloatingPortal>
                    <div
                        ref={refs.setFloating}
                        style={{ ...floatingStyles, ...styles}}
                        className='body-header-tooltip'
                    >
                        <div className='body-info-box'>
                            <div className='body-info-header'>{bodylabel}</div>
                            <div className='body-info-detail-box'>
                                <div className='body-info-detail-name'>{Locale.damage_bullet || 'Bullet'}</div>
                                <div className='body-info-detail-value'>{bodydamagecal[bodypart]?.bullets || 0}</div>
                            </div>
                            <div className='body-info-detail-box'>
                                <div className='body-info-detail-name'>{Locale.damage_broken || 'Broken'}</div>
                                <div className='body-info-detail-value'>{bodydamagecal[bodypart]?.broken ? 'Yes' : 'No'}</div>
                            </div>
                            <div className='body-info-detail-box'>
                                <div className='body-info-detail-name'>{Locale.damage_severity || 'Severity'}</div>
                                <div className='body-info-detail-value'>{bodydamagecal[bodypart]?.severity ? 'High' : 'None'}</div>
                            </div>
                            <div className='body-info-detail-box'>
                                <div className='body-info-detail-name'>{Locale.damage_bleeding || 'Bleeding'}</div>
                                <div className='body-info-detail-value'>{bodydamagecal[bodypart]?.bleeding ? 'Yes' : 'No'}</div>
                            </div>
                        </div>
                    </div>
                </FloatingPortal>
            )}
            <div className="inventory-view-button">
                <div className="inventory-view-wrapper">
                    <button className="inventory-view-button-active" onClick={() => { setShowRightInventory(false); setShowBodyDamage(true); }}>
                        <div className="inventory-view-button-inner">Q</div>{Locale.button_body || 'Body Damage'}
                    </button>
                    <button className="inventory-view-button-inactive" onClick={() => { setShowRightInventory(true); setShowBodyDamage(false); }}>
                        <div className="inventory-view-button-inner">E</div>{Locale.button_slot || 'Inventory Slot'}
                    </button>
                </div>
            </div>
            <div className='body-info-line-wrapper'>
                <div className='body-info-line-box-wrapper'>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2vw' : '2vw', marginLeft: for2k ? '8.5vw' : '9.2vw'}} >
                        <div className='body-info-line-right' style={{ width: '2vw' }} />
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.body_head || 'Head'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["HEAD"]?.percent}%` }}></div>
                        </div>
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2vw' : '2.5vw', marginRight: for2k ? '8vw' : '8.5vw'}} >
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.body_neck || 'Neck'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["NECK"]?.percent}%` }}></div>
                        </div>
                        <div className='body-info-line-left ' style={{ width: '2vw' }} />
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2vw' : '2.5vw', marginLeft: for2k ? '13vw' : '14.5vw' }} >
                        <div className='body-info-line-right' style={{ width: '4vw' }} />
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.body_upper || 'Upper Body'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["UPPER_BODY"]?.percent}%` }}></div>
                        </div>
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2vw' : '2.5vw', marginRight: for2k ? '14.5vw' : '16vw' }} >
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.arm_right || 'Right Arm'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["RARM"]?.percent}%` }}></div>
                        </div>
                        <div className='body-info-line-left' style={{ width: '2vw' }} />
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '1.5vw' : '2vw', marginLeft: for2k ? '15.5vw' : '17.2vw' }} >
                        <div className='body-info-line-right' style={{ width: '2vw' }} />
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.arm_left || 'Left Arm'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["LARM"]?.percent}%` }}></div>
                        </div>
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2vw' : '2.5vw', marginRight: for2k ? '12.5vw' : '14.5vw' }} >
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.body_lower || 'Lower Body'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["LOWER_BODY"]?.percent}%` }}></div>
                        </div>
                        <div className='body-info-line-left' style={{ width: '4vw' }} />
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2vw' : '2vw', marginLeft: for2k ? '18vw' : '20.6vw' }} >
                        <div className='body-info-line-right' style={{ width: '2vw' }} />
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.hand_left || 'Left Hand'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["LHAND"]?.percent}%` }}></div>
                        </div>
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '1vw' : '1vw', marginRight: for2k ? '18vw' : '20vw' }} >
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.hand_right || 'Right Hand'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["RHAND"]?.percent}%` }}></div>
                        </div>
                        <div className='body-info-line-left' style={{ width: '2vw' }} />
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '2.5vw' : '3vw', marginLeft: for2k ? '11vw' : '12vw' }}>
                        <div className='body-info-line-right' style={{ width: '2vw' }} />
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.leg_left || 'Left Leg'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["LLEG"]?.percent}%` }}></div>
                        </div>
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '3vw' : '3.5vw', marginRight: for2k ? '11vw' : '12.3vw' }}>
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.leg_right || 'Right Leg'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["RLEG"]?.percent}%` }}></div>
                        </div>
                        <div className='body-info-line-left' style={{ width: '2vw' }} />
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '4vw' : '4vw', marginLeft: for2k ? '10vw' : '11vw' }}>
                        <div className='body-info-line-right' style={{ width: '2vw' }} />
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.foot_left || 'Left Foot'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["LFOOT"]?.percent}%` }}></div>
                        </div>
                    </div>
                    <div className='body-info-line-box' style={{ marginTop: for2k ? '1vw' : '1vw', marginRight: for2k ? '10.5vw' : '12vw' }}>
                        <div className='body-info-line-bar'>
                            <div className='body-info-line-label'>{Locale.foot_right || 'Right Foot'}</div>
                            <div className='body-info-line-fill' style={{ width: `${100 - bodydamagecal["RFOOT"]?.percent}%` }}></div>
                        </div>
                        <div className='body-info-line-left' style={{ width: '2vw' }} />
                    </div>
                </div>
            </div>
            <div className="body-container-img-wrapper">
                <div onMouseEnter={() => { setHoverData(true); setBodypart('HEAD'); setBodyLabel(`${Locale.body_head || 'Head'}`) }} style={{ top: for2k ? '.5vw' : '.5vw', width: for2k ? '4vw' : '4vw', height: for2k ? '3.3vw' : '3.7vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('NECK'); setBodyLabel(`${Locale.body_neck || 'Neck'}`) }} style={{ top: for2k ? '3.9vw' : '4.3vw', width: for2k ? '4vw' : '4vw', height: for2k ? '.9vw' : '1.1vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('UPPER_BODY'); setBodyLabel(`${Locale.body_upper || 'Upper Body'}`) }} style={{ top: for2k ? '4.9vw' : '5.5vw', width: for2k ? '5.3vw' : '5.9vw', height: for2k ? '5.9vw' : '6.4vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LOWER_BODY'); setBodyLabel(`${Locale.body_lower || 'Lower Body'}`) }} style={{ top: for2k ? '10.9vw' : '12vw', width: for2k ? '5.3vw' : '5.9vw', height: for2k ? '4.5vw' : '5.2vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RARM'); setBodyLabel(`${Locale.arm_right || 'Right Arm'}`) }} style={{ top: for2k ? '4.9vw' : '5.5vw', left: for2k ? '8.2vw' : '9.6vw', width: for2k ? '3vw' : '3vw', height: for2k ? '9.4vw' : '10.4vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LARM'); setBodyLabel(`${Locale.arm_left || 'Left Arm'}`) }} style={{ top: for2k ? '4.9vw' : '5.5vw', right: for2k ? '8.2vw' : '9.6vw', width: for2k ? '3vw' : '3vw', height: for2k ? '9.4vw' : '10.4vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RHAND'); setBodyLabel(`${Locale.hand_right || 'Right Hand'}`) }} style={{ top: for2k ? '14.4vw' : '16vw', left: for2k ? '7.2vw' : '8.3vw', width: for2k ? '4vw' : '4.3vw', height: for2k ? '3vw' : '3.5vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LHAND'); setBodyLabel(`${Locale.hand_left || 'Left Hand'}`) }} style={{ top: for2k ? '14.4vw' : '16vw', right: for2k ? '7.2vw' : '8.3vw', width: for2k ? '4vw' : '4.3vw', height: for2k ? '3vw' : '3.5vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RLEG'); setBodyLabel(`${Locale.leg_right || 'Right Leg'}`) }} style={{ top: for2k ? '15.5vw' : '17.3vw', left: for2k ? '11.3vw' : '12.7vw', width: for2k ? '2.6vw' : '2.9vw', height: for2k ? '11.1vw' : '12.5vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LLEG'); setBodyLabel(`${Locale.leg_left || 'Left Leg'}`) }} style={{ top: for2k ? '15.5vw' : '17.3vw', right: for2k ? '11.3vw' : '12.7vw', width: for2k ? '2.6vw' : '2.9vw', height: for2k ? '11.1vw' : '12.5vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RFOOT'); setBodyLabel(`${Locale.foot_right || 'Right Foot'}`) }} style={{ top: for2k ? '26.7vw' : '29.9vw', left: for2k ? '10.5vw' : '11.9vw', width: for2k ? '3.4vw' : '3.8vw', height: for2k ? '3vw' : '3.3vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LFOOT'); setBodyLabel(`${Locale.foot_left || 'Left Foot'}`) }} style={{ top: for2k ? '26.7vw' : '29.9vw', right: for2k ? '10.5vw' : '11.9vw', width: for2k ? '3.4vw' : '3.8vw', height: for2k ? '3vw' : '3.3vw' }} onMouseLeave={() => { setHoverData(false) }} className='body-info' />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["HEAD"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="body_head" src={getAssetUrl('body_head')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["NECK"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="body_neck" src={getAssetUrl('body_neck')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["UPPER_BODY"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="body_upper" src={getAssetUrl('body_upper')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["LOWER_BODY"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="body_lower" src={getAssetUrl('body_lower')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["LLEG"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="leg_left" src={getAssetUrl('leg_left')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["RLEG"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="leg_right" src={getAssetUrl('leg_right')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["LFOOT"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt='foot_left' src={getAssetUrl('foot_left')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["RFOOT"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="foot_right" src={getAssetUrl('foot_right')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["LARM"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="arm_left" src={getAssetUrl('arm_left')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["RARM"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="arm_right" src={getAssetUrl('arm_right')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["LHAND"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="hand_left" src={getAssetUrl('hand_left')} />
                <img className="body-container-img" style={{ opacity: 0.9, filter: `sepia(${bodydamagecal["RHAND"]?.percent}%) saturate(1000%) brightness(60%) hue-rotate(290deg)` }} alt="hand_right" src={getAssetUrl('hand_right')} />
            </div>
        </div>
    );
}