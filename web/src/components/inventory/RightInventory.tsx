import InventoryGrid from './InventoryGrid';
import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';

const RightInventory: React.FC = () => {
  const rightInventory = useAppSelector(selectRightInventory);

  // original ox
  //return <InventoryGrid inventory={rightInventory} />;
  return(
    <div>
      <InventoryGrid inventory={rightInventory} direction='right' />
    </div>
  );
};

export default RightInventory;
