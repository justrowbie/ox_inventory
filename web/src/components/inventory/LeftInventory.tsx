import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';

const LeftInventory: React.FC = () => {
  const leftInventory = useAppSelector(selectLeftInventory);
  // filter first 5 column
  const hotbarInventory = leftInventory.items.slice(0, 5);
  
  // original ox
  // return <InventoryGrid inventory={leftInventory} />;
  return (
    <div>
      <InventoryGrid inventory={{ ...leftInventory, items: hotbarInventory, label: 'hotbar' }} direction='left' fullInventoryHotbar={leftInventory} />
      <InventoryGrid inventory={leftInventory} direction='left' />
    </div>
  )
};

export default LeftInventory;
