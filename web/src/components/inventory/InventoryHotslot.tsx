import React from 'react';
import { Inventory } from '../../typings';
import InventorySlot from './InventorySlot';
import InventoryContext from './InventoryContext';
import { createPortal } from 'react-dom';

const InventoryHotslot: React.FC<{ inventory: Inventory; }> = ({
  inventory,
}) => {
  const hotInv = inventory.items.slice(0, 5);
  return (
    <>
      {inventory.type === 'player' && (
        <>
          <div className="hotslot-wrapper">
            {hotInv.map((item) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
              />
            ))}
            {inventory.type === 'player' && createPortal(<InventoryContext />, document.body)}
          </div>
        </>
      )}
    </>
  );
};

export default InventoryHotslot;
