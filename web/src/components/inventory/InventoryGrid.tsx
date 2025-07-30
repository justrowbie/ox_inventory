import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBagShopping, faBriefcase, faCube, faCubes, faHand, faScrewdriverWrench, faWeightHanging } from '@fortawesome/free-solid-svg-icons';
import InventoryControl from './InventoryControl';
import { IconProp } from '@fortawesome/fontawesome-svg-core';
import { useInventoryView } from './InventoryViewContext';
import { Locale } from '../../store/locale';

const PAGE_SIZE = 30;

const InventoryGrid: React.FC<{ inventory: Inventory, direction: 'left' | 'right', fullInventoryHotbar?: Inventory }> = ({ inventory, direction, fullInventoryHotbar }) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const effectiveWeight = useMemo(() => {
    if (inventory.label === 'hotbar' && fullInventoryHotbar) {
      return Math.floor(getTotalWeight(fullInventoryHotbar.items) * 1000) / 1000;
    }
    return weight;
  }, [inventory.label, fullInventoryHotbar, weight]);
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const renderIcon = () => {
    if (inventory.label === 'hotbar') {
      return (
        <FontAwesomeIcon icon={faHand as IconProp} width='16px' />
      );
    } else if (inventory.type === 'player') {
      return (
        <FontAwesomeIcon icon={faBriefcase as IconProp} width='16px' />
      );
    } else if (inventory.type === 'stash') {
      return (
        <FontAwesomeIcon icon={faCube as IconProp} width='16px' />
      );
    } else if (inventory.type === 'shop') {
      return (
        <FontAwesomeIcon icon={faBagShopping as IconProp} width='16px' />
      );
    } else if (inventory.type === 'crafting') {
      return (
        <FontAwesomeIcon icon={faScrewdriverWrench as IconProp} width='16px' />
      );
    } else {
      return (
        <FontAwesomeIcon icon={faCubes as IconProp} width='16px' />
      );
    }
  };

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  const { setShowRightInventory, setShowBodyDamage } = useInventoryView();
  
  return (
    <>
      {inventory.label !== 'hotbar' && (
        <div
          className="inventory-grid-wrapper"
          style={{
            pointerEvents: isBusy ? 'none' : 'auto',
          }}
        >
          <div
            className="inventory-head"
            style={{
              display: inventory.type === 'player' ? 'none' : 'flex',
            }}
          >
            <div className="inventory-view-button">
              <div className="inventory-view-wrapper">
                  <button className="inventory-view-button-inactive" onClick={() => { setShowRightInventory(false); setShowBodyDamage(true); }}>
                    <div className="inventory-view-button-inner">Q</div>{Locale.button_body || 'Body Damage'}
                  </button>
                  <button className="inventory-view-button-active" onClick={() => { setShowRightInventory(true); setShowBodyDamage(false); }}>
                    <div className="inventory-view-button-inner">E</div>{Locale.button_slot || 'Inventory Slot'}
                  </button>
              </div>
            </div>
            <div className="inventory-grid-header-wrapper">
              <div className="inventory-icon-box">{renderIcon()}</div>
              <div className="inventory-label-box">
                <p className="inventory-label-text">{inventory.label || 'Drop'}</p>
              </div>
            </div>
            {(inventory.type !== 'shop' && inventory.type !== 'crafting') && (
              <div className="inventory-grid-header-bottom">
                  {inventory.maxWeight && (
                    <div className="inventory-weight-text-area">
                      <p className="inventory-weight">
                        {weight / 1000} / {inventory.maxWeight / 1000}kg
                      </p>
                      <div className="inventory-icon-box-weight">
                        <FontAwesomeIcon icon={faWeightHanging as IconProp} width='10px' />
                      </div>
                    </div>
                  )}
                  <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
              </div>
            )}
          </div>
          <div
            className="inventory-head"
            style={{
              display: inventory.type === 'player' ? 'flex' : 'none',
              justifyContent: 'space-between',
            }}
          >
            <div className="inventory-grid-header-wrapper">
              <div className="inventory-icon-box">{renderIcon()}</div>
              <div className="inventory-label-box">
                <p className="inventory-label-text">{inventory.label || 'Drop'}</p>
              </div>
            </div>
          </div>
          <div className={direction === 'left' ? 'inventory-grid-container-left' : 'inventory-grid-container-right'} ref={containerRef}>
            <>
              {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
                <InventorySlot
                  key={`${inventory.type}-${inventory.id}-${item.slot}`}
                  item={item}
                  ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                  inventoryType={inventory.type}
                  inventoryGroups={inventory.groups}
                  inventoryId={inventory.id}
                  hotbar={inventory.label === 'hotbar'}
                />
              ))}
            </>
          </div>
        </div>
      )}
      {inventory.label == 'hotbar' && (
        <div
          className="inventory-grid-wrapper"
          style={{
            pointerEvents: isBusy ? 'none' : 'auto',
            height: '21.5vh'
          }}
        >
          <div className="inventory-head">
            <div className="inventory-grid-header-wrapper">
              <div className="inventory-icon-box">{renderIcon()}</div>
              <div className="inventory-label-box">
                <p className="inventory-label-text">{inventory.label || 'Drop'}</p>
              </div>
            </div>
            <div className="inventory-grid-header-bottom">
              {inventory.maxWeight && (
                <div className="inventory-weight-text-area">
                  <p className="inventory-weight">
                    {effectiveWeight / 1000} / {inventory.maxWeight / 1000}kg
                  </p>
                  <div className="inventory-icon-box-weight">
                    <FontAwesomeIcon icon={faWeightHanging as IconProp} width='10px' />
                  </div>
                </div>
              )}
              <WeightBar percent={inventory.maxWeight ? (effectiveWeight / inventory.maxWeight) * 100 : 0} />
            </div>
          </div>
          <div className={direction === 'left' ? 'inventory-grid-container-left' : 'inventory-grid-container-right'} ref={containerRef} style={{ overflow: 'hidden' }}>
            <>
              {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
                <InventorySlot
                  key={`${inventory.type}-${inventory.id}-${item.slot}`}
                  item={item}
                  ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                  inventoryType={inventory.type}
                  inventoryGroups={inventory.groups}
                  inventoryId={inventory.id}
                  hotbar={inventory.label === 'hotbar'}
                />
              ))}
            </>
          </div>
          <InventoryControl />
        </div>
      )}
    </>
  );
};

export default InventoryGrid;
