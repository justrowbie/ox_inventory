import InventoryComponent from './components/inventory';
import useNuiEvent from './hooks/useNuiEvent';
import { Items } from './store/items';
import { Locale } from './store/locale';
import { setImagePath } from './store/imagepath';
import { setupInventory } from './store/inventory';
import { Inventory } from './typings';
import { useAppDispatch } from './store';
import { debugData } from './utils/debugData';
import DragPreview from './components/utils/DragPreview';
import { fetchNui } from './utils/fetchNui';
import { useDragDropManager } from 'react-dnd';
import KeyPress from './components/utils/KeyPress';
import { setDamage } from './store/damage';
import { InventoryViewProvider } from './components/inventory/InventoryViewContext';

debugData([
  {
    action: 'setupInventory',
    data: {
      leftInventory: {
        id: 'left',
        type: 'player',
        slots: 50,
        label: 'Bob Smith',
        weight: 3000,
        maxWeight: 8000,
        items: [
          {
            slot: 1,
            name: 'lockpick',
            weight: 500,
            count: 5,
            metadata: {
              label: 'Lock Pick',
              durability: 50,
              type: 'Rare',
            },
          },
          {
            slot: 2,
            name: 'phone',
            weight: 800,
            count: 1
          },
          {
            slot: 3,
            name: 'weapon_pistol',
            weight: 1000,
            count: 1,
            metadata: {
              label: 'Pistol',
              ammo: 3,
              durability: 30,
              serial: '12345ABCDE',
              component: 'at_flashlight',
            },
          },
          {
            slot: 4,
            name: 'stone',
            weight: 100,
            count: 100,
            metadata: {
              label: 'Batu',
              description: 'Generic item description',
              durability: 50,
              type: 'Common',
            },
          },
          { 
            slot: 5,
            name: 'water_bottle',
            weight: 100,
            count: 5,
            metadata: {
              label: 'Air Botol',
              durability: 80,
            },
          },
          {
            slot: 6,
            name: 'tosti',
            weight: 100,
            count: 3,
            metadata: {
              label: 'Roti Keju',
              durability: 100,
              type: 'Special',
            },
          },
        ],
      },
      rightInventory: {
        id: 'right',
        type: 'stash',
        slots: 5000,
        label: 'Toko Nothing',
        weight: 3000,
        maxWeight: 5000,
        items: [
          {
            slot: 1,
            name: 'lockpick',
            currency: 'water_bottle',
            weight: 500,
            count: 1,
            price: 300,
            ingredients: {
              water_bottle: 5,
              tosti: 12,
            },
          },
          {
            slot: 2,
            name: 'tosti',
            weight: 500,
            price: 3000,
            count: 1,
            metadata: {
              label: 'Roti Keju',
              durability: 100,
              type: 'Special',
            },
          },
        ],
      },
    },
  },
]);

const App: React.FC = () => {
  const dispatch = useAppDispatch();
  const manager = useDragDropManager();

  useNuiEvent<{
    locale: { [key: string]: string };
    items: typeof Items;
    leftInventory: Inventory;
    imagepath: string;
  }>('init', ({ locale, items, leftInventory, imagepath }) => {
    for (const name in locale) Locale[name] = locale[name];
    for (const name in items) Items[name] = items[name];

    setImagePath(imagepath);
    dispatch(setupInventory({ leftInventory }));
  });

  fetchNui('uiLoaded', {});

  useNuiEvent('closeInventory', () => {
    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  useNuiEvent('DamageCall', (data: any) => {
    dispatch(setDamage(data))
  })

  return (
    <div className="app-wrapper">
      <InventoryViewProvider>
        <InventoryComponent />
        <DragPreview />
        <KeyPress />
      </InventoryViewProvider>
    </div>
  );
};

addEventListener("dragstart", function(event) {
  event.preventDefault()
})

export default App;
