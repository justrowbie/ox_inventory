import illeg from './img/lleg.png';
import irleg from './img/rleg.png';
import iupperbody from './img/upperbody.png';
import ilowerbody from './img/lowerbody.png';
import irarm from './img/rarm.png';
import ilarm from './img/larm.png';
import ilhand from './img/lhand.png';
import ineck from './img/neck.png';
import ihead from './img/head.png';
import irhand from './img/rhand.png';
import irfoot from './img/rfoot.png';
import ilfoot from './img/lfoot.png';
import ArrowRight from './svg/Arrowright';
import ArrowLeft from './svg/Arrowleft';
import { flip, FloatingPortal, offset, shift, useFloating, useTransitionStyles } from '@floating-ui/react';
import React from 'react';
import { getItemUrl } from '../helpers';
import { isEnvBrowser } from './misc';
import { debugData } from './debugData';
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
            NECK: {
                severity: false,
                percent: 0,
                bullets: 0,
                broken: false,
                bleeding: false,
            },
            RLEG: {
                severity: true,
                percent: 10,
                bullets: 6,
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
            LOWER_BODY: {
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
            UPPER_BODY: {
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
    return (
        <div className="group">
            <div className="overlap-group" >
                {isMounted && (
                    <FloatingPortal>
                        <div
                            ref={refs.setFloating}
                            style={{ ...floatingStyles, ...styles, color: 'white' }}
                        >
                            <div style={{
                                width: '11vw',
                                height: '8vw',
                                backgroundColor: '#25262bcc',
                                color: '#f8f9fa',
                            }}>
                                <div style={{ fontSize: '10px', width: '5vw', margin: '0.5vw', position: 'absolute' }}>
                                    <div style={{ fontWeight: 600, width: '10vw', textAlign: 'center', marginBottom: '6px' }}>{bodylabel}</div>
                                    <div style={{ width: '10vw', height: '1.2vw', backgroundColor: '#10111380', display: 'flex', flexDirection: 'row', justifyContent: 'center' }}>
                                        <div style={{ width: '50%', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            Bullet
                                        </div>
                                        <div style={{ width: '50%', background: '#10111380', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            {bodydamagecal[bodypart]?.bullets || 0}
                                        </div>
                                    </div>
                                    <div style={{ width: '10vw', height: '1.2vw', backgroundColor: '#10111380', display: 'flex', flexDirection: 'row', justifyContent: 'center', marginTop: '0.3vw' }}>
                                        <div style={{ width: '50%', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            Broken
                                        </div>
                                        <div style={{ width: '50%', background: '#10111380', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            {bodydamagecal[bodypart]?.broken ? 'Yes' : 'No'}
                                        </div>
                                    </div>
                                    <div style={{ width: '10vw', height: '1.2vw', backgroundColor: '#10111380', display: 'flex', flexDirection: 'row', justifyContent: 'center', marginTop: '0.25vw' }}>
                                        <div style={{ width: '50%', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            Severity
                                        </div>
                                        <div style={{ width: '50%', background: '#10111380', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            {bodydamagecal[bodypart]?.severity ? 'High' : 'None'}
                                        </div>
                                    </div>
                                    <div style={{ width: '10vw', height: '1.2vw', backgroundColor: '#10111380', display: 'flex', flexDirection: 'row', justifyContent: 'center', marginTop: '0.25vw' }}>
                                        <div style={{ width: '50%', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            Bleeding
                                        </div>
                                        <div style={{ width: '50%', background: '#10111380', display: 'flex', alignContent: 'center', alignItems: 'center', justifyContent: 'center' }}>
                                            {bodydamagecal[bodypart]?.bleeding ? 'Yes' : 'No'}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </FloatingPortal>
                )}
                <div onMouseEnter={() => { setHoverData(true); setBodypart('UPPER_BODY'); setBodyLabel('Upper Body') }} onMouseLeave={() => { setHoverData(false) }} className='upperbody' style={{ width: '6.5vw', height: '4vw', position: 'absolute', marginLeft: '7vw', marginTop: '8vw', zIndex: 1, borderRadius: '1vw' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LOWER_BODY'); setBodyLabel('Lower Body') }} onMouseLeave={() => { setHoverData(false) }} className='lowerbody' style={{ width: '6vw', height: '5vw', position: 'absolute', marginLeft: '7vw', marginTop: '13vw', zIndex: 1, borderRadius: '1vw', rotate: '2deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('HEAD'); setBodyLabel('Head') }} onMouseLeave={() => { setHoverData(false) }} className='head' style={{ width: '3.5vw', height: '4vw', position: 'absolute', marginLeft: '11.2vw', marginTop: '1vw', zIndex: 1, borderRadius: '1vw', rotate: '2deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('NECK'); setBodyLabel('Neck') }} onMouseLeave={() => { setHoverData(false) }} className='neck' style={{ width: '3vw', height: '2vw', position: 'absolute', marginLeft: '6vw', marginTop: '5.5vw', zIndex: 1, borderRadius: '1vw', rotate: '0deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RARM'); setBodyLabel('Right Arm') }} onMouseLeave={() => { setHoverData(false) }} className='rarm' style={{ width: '1.5vw', height: '12vw', position: 'absolute', marginLeft: '14.5vw', marginTop: '6.5vw', zIndex: 1, borderRadius: '1vw', rotate: '-15deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RHAND'); setBodyLabel('Right Hand') }} onMouseLeave={() => { setHoverData(false) }} className='rhand' style={{ width: '2vw', height: '4vw', position: 'absolute', marginLeft: '16vw', marginTop: '18.5vw', zIndex: 1, borderRadius: '1vw', rotate: '-10deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LARM'); setBodyLabel('Left Arm') }} onMouseLeave={() => { setHoverData(false) }} className='larm' style={{ width: '1.5vw', height: '12vw', position: 'absolute', marginLeft: '4.5vw', marginTop: '7.5vw', zIndex: 1, borderRadius: '1vw', rotate: '20deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LHAND'); setBodyLabel('Left Hand') }} onMouseLeave={() => { setHoverData(false) }} className='lhand' style={{ width: '2vw', height: '3vw', position: 'absolute', marginLeft: '1vw', marginTop: '18.5vw', zIndex: 1, borderRadius: '1vw', rotate: '20deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LLEG'); setBodyLabel('Left Leg') }} onMouseLeave={() => { setHoverData(false) }} className='lleg' style={{ width: '3vw', height: '14vw', position: 'absolute', marginLeft: '5.5vw', marginTop: '18.5vw', zIndex: 1, borderRadius: '1vw', rotate: '0deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('LFOOT'); setBodyLabel('Left Foot') }} onMouseLeave={() => { setHoverData(false) }} className='lfoot' style={{ width: '1.5vw', height: '5vw', position: 'absolute', marginLeft: '7.5vw', marginTop: '31vw', zIndex: 1, borderRadius: '1vw', rotate: '30deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RLEG'); setBodyLabel('Right Leg') }} onMouseLeave={() => { setHoverData(false) }} className='rleg' style={{ width: '3vw', height: '15.5vw', position: 'absolute', marginLeft: '10vw', marginTop: '18.5vw', zIndex: 1, borderRadius: '1vw', rotate: '-5deg' }} />
                <div onMouseEnter={() => { setHoverData(true); setBodypart('RFOOT'); setBodyLabel('Right Foot') }} onMouseLeave={() => { setHoverData(false) }} className='rfoot' style={{ width: '2vw', height: '3vw', position: 'absolute', marginLeft: '10.5vw', marginTop: '34vw', zIndex: 1, borderRadius: '1vw', rotate: '10deg' }} />
                <ArrowRight styles={{
                    width: '10vw',
                    height: '1.8vw',
                    position: 'absolute',
                    marginLeft: '11vw',
                    marginTop: '2.5vw',
                }} durablitystyles={{ textAlign: 'center', width: '7vw', marginLeft: '15.5vw', marginTop: '1vw', position: 'absolute' }} label={'Head'} percent={100 - bodydamagecal["HEAD"]?.percent} />
                <ArrowRight styles={{
                    width: '10vw',
                    height: '1.8vw',
                    position: 'absolute',
                    marginLeft: '14.5vw',
                    marginTop: '9vw',
                }} durablitystyles={{ textAlign: 'center', width: '7vw', marginLeft: '19.5vw', marginTop: '7.5vw', position: 'absolute' }} label={'Right Arm'} percent={100 - bodydamagecal["RARM"]?.percent} />
                <ArrowRight styles={{
                    width: '10vw',
                    height: '1.8vw',
                    position: 'absolute',
                    marginLeft: '12vw',
                    marginTop: '26vw',
                }} durablitystyles={{ textAlign: 'center', width: '7vw', marginLeft: '16.5vw', marginTop: '24.5vw', position: 'absolute' }} label={'Right Leg'} percent={100 - bodydamagecal["RLEG"]?.percent} />
                <ArrowLeft styles={{
                    width: '10vw',
                    height: '1.8vw',
                    position: 'absolute',
                    marginLeft: '1.2vw',
                    marginTop: '26vw',
                }} durablitystyles={{ textAlign: 'center', width: '7vw', marginLeft: '-0.5vw', marginTop: '24.5vw', position: 'absolute' }} label={'Left Leg'} percent={100 - bodydamagecal["LLEG"]?.percent} />
                <ArrowLeft styles={{
                    width: '10vw',
                    height: '1.8vw',
                    position: 'absolute',
                    marginLeft: '1.2vw',
                    marginTop: '9vw',
                }} durablitystyles={{ textAlign: 'center', width: '7vw', marginLeft: '0.2vw', marginTop: '7.5vw', position: 'absolute' }} label={'Left Arm'} percent={100 - bodydamagecal["LARM"]?.percent} />
                <img className="upperbody" style={{ filter: `sepia(${bodydamagecal["UPPER_BODY"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="upperbody" src={isEnvBrowser() ? iupperbody : getItemUrl('upperbody')} />
                <img className="lowerbody" style={{ filter: `sepia(${bodydamagecal["LOWER_BODY"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="lowerbody" src={isEnvBrowser() ? ilowerbody : getItemUrl('lowerbody')} />
                <img className="lleg" style={{ filter: `sepia(${bodydamagecal["LLEG"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="lleg" src={isEnvBrowser() ? illeg : getItemUrl('lleg')} />
                <img className="rleg" style={{ filter: `sepia(${bodydamagecal["RLEG"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="rleg" src={isEnvBrowser() ? irleg : getItemUrl('rleg')} />
                <img className="rarm" style={{ filter: `sepia(${bodydamagecal["RARM"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="rarm" src={isEnvBrowser() ? irarm : getItemUrl('rarm')} />
                <img className="larm" style={{ filter: `sepia(${bodydamagecal["LARM"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="larm" src={isEnvBrowser() ? ilarm : getItemUrl('larm')} />
                <img className="lhand" style={{ filter: `sepia(${bodydamagecal["LHAND"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="lhand" src={isEnvBrowser() ? ilhand : getItemUrl('lhand')} />
                <img className="neck" style={{ filter: `sepia(${bodydamagecal["NECK"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="neck" src={isEnvBrowser() ? ineck : getItemUrl('neck')} />
                <img className="head" style={{ filter: `sepia(${bodydamagecal["HEAD"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="head" src={isEnvBrowser() ? ihead : getItemUrl('head')} />
                <img className="rhand" style={{ filter: `sepia(${bodydamagecal["RHAND"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="rhand" src={isEnvBrowser() ? irhand : getItemUrl('rhand')} />
                <img className="rfoot" style={{ filter: `sepia(${bodydamagecal["RFOOT"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt="rfoot" src={isEnvBrowser() ? irfoot : getItemUrl('rfoot')} />
                <img className="lfoot" style={{ filter: `sepia(${bodydamagecal["LFOOT"]?.percent}%) saturate(300%) brightness(100%) hue-rotate(299deg)` }} alt='lfoot' src={isEnvBrowser() ? ilfoot : getItemUrl('lfoot')} />
            </div>
        </div>
    );
}