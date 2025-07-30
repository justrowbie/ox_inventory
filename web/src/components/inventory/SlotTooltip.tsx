import { Inventory, SlotWithItem } from '../../typings';
import React, { Fragment, useMemo } from 'react';
import { Items } from '../../store/items';
import { Locale } from '../../store/locale';
import { useAppSelector } from '../../store';
import { getItemUrl } from '../../helpers';
import Divider from '../utils/Divider';

const SlotTooltip: React.ForwardRefRenderFunction<
  HTMLDivElement,
  { item: SlotWithItem; inventoryType: Inventory['type']; style: React.CSSProperties }
> = ({ item, inventoryType, style }, ref) => {
  const additionalMetadata = useAppSelector((state) => state.inventory.additionalMetadata);
  const itemData = useMemo(() => Items[item.name], [item]);
  const ingredients = useMemo(() => {
    if (!item.ingredients) return null;
    return Object.entries(item.ingredients).sort((a, b) => a[1] - b[1]);
  }, [item]);
  const description = item.metadata?.description || itemData?.description;
  const ammoName = itemData?.ammoName && Items[itemData?.ammoName]?.label;

  return (
    <>
      {!itemData ? (
        <div className="tooltip-wrapper" ref={ref} style={style}>
          <div className="tooltip-header-wrapper">
            <p>{item.name}</p>
          </div>
          <Divider />
        </div>
      ) : (
        <div style={{ ...style }} className="tooltip-wrapper" ref={ref}>
          <div
            className="tooltip-header-box"
          >
            <div className="tooltip-header-title">
              <p className="tooltip-item-name">{item.metadata?.label || itemData.label || item.name}</p>
              {(item.metadata?.type === 'Special' || item.metadata?.type === 'Rare') && (
                <div className={`tooltip-type-${item.metadata.type.toLowerCase()}`}>
                  {item.metadata.type}
                </div>
              )}
              {item.weight > 0 && (
                <div className='tooltip-weight'>
                  {item.weight > 0
                    ? item.weight >= 1000
                      ? `${(item.weight / 1000).toLocaleString('en-us', {
                          minimumFractionDigits: 2,
                        })}kg `
                      : `${item.weight.toLocaleString('en-us', {
                          minimumFractionDigits: 0,
                        })}g `
                    : ''}
                </div>
              )}
            </div>
            {description ? (
              <div className="tooltip-description">
                {description}
              </div>
            ) : (
              <div className="tooltip-description">
                No description found about Item
              </div>
            )}
          </div>
          {(item.metadata || inventoryType === 'crafting') && (
            <Divider />
          )}
          {inventoryType === 'crafting' && (
            <div className="tooltip-crafting-duration">
              <div>{Locale.ingridient || 'Requirement'}:</div>
              <div style={{
                marginLeft: 'auto'
              }}>{Locale.crafting_time || 'Craft Time'}:</div>
              <div style={{
                paddingLeft: '2px'
              }}>{(item.duration !== undefined ? item.duration : 3000) / 1000} {Locale.second || 'Second/s'}</div>
            </div>
          )}
          {inventoryType !== 'crafting' ? (
            <>
              <div style={{
                width: '100%',
                height: 'fit-content',
                display: 'flex',
                flexDirection: 'column',
                gap: '5px',
              }}>
                {item.durability !== undefined && (
                  <p className='tooltip-metadata-text'>
                    {Locale.ui_durability || 'Durability'}: <p className='tooltip-metadata-value'>{Math.trunc(item.durability)}%</p>
                  </p>
                )}
                {item.metadata?.ammo !== undefined && (
                  <p className='tooltip-metadata-text'>
                    {Locale.ui_ammo || 'Ammo'}: <p className='tooltip-metadata-value'>{item.metadata.ammo}</p>
                  </p>
                )}
                {ammoName && (
                  <p className='tooltip-metadata-text'>
                    {Locale.ammo_type || 'Ammo Type'}: <p className='tooltip-metadata-value'>{ammoName}</p>
                  </p>
                )}
                {item.metadata?.serial && (
                  <p className='tooltip-metadata-text'>
                    {Locale.ui_serial || 'Serial'}: <p className='tooltip-metadata-value'>{item.metadata.serial}</p>
                  </p>
                )}
                {item.metadata?.components && item.metadata?.components[0] && (
                  <p className='tooltip-metadata-text'>
                    {Locale.ui_components || 'Component'}:{' '}
                    <p className='tooltip-metadata-value'>
                      {(item.metadata?.components).map((component: string, index: number, array: []) =>
                        index + 1 === array.length ? Items[component]?.label : Items[component]?.label + ', '
                      )}
                    </p>

                  </p>
                )}
                {item.metadata?.weapontint && (
                  <p className='tooltip-metadata-text'>
                    {Locale.ui_tint || 'Tint'}: <p className='tooltip-metadata-value'>{item.metadata.weapontint}</p>
                  </p>
                )}
                {additionalMetadata.map((data: { metadata: string; value: string }, index: number) => (
                  <Fragment key={`metadata-${index}`}>
                    {item.metadata && item.metadata[data.metadata] && (
                      <p className='tooltip-metadata-text'>{data.value}:<p className='tooltip-metadata-value'>{item.metadata[data.metadata]}</p></p>
                    )}
                  </Fragment>
                ))}
              </div>
            </>
          ) : (
            <div className="tooltip-ingredients">
              {ingredients &&
                ingredients.map((ingredient) => {
                  const [item, count] = [ingredient[0], ingredient[1]];
                  return (
                    <div className="tooltip-ingredient" key={`ingredient-${item}`}>
                      <img src={item ? getItemUrl(item) : 'none'} alt="item-image" />
                      <p>
                        {count >= 1
                          ? `${count}x ${Items[item]?.label || item}`
                          : count === 0
                          ? `${Items[item]?.label || item}`
                          : count < 1 && `${count * 100}% ${Items[item]?.label || item}`}
                      </p>
                    </div>
                  );
                })}
            </div>
          )}
        </div>
      )}
    </>
  );
};

export default React.forwardRef(SlotTooltip);
