import React, { useState } from 'react';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { Items } from '../../store/items';
import WeightBar from '../utils/WeightBar';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { SlotWithItem } from '../../typings';
import SlideUp from '../utils/transitions/SlideUp';

const InventoryHotbar: React.FC = () => {
  const [hotbarVisible, setHotbarVisible] = useState(false);
  const items = useAppSelector(selectLeftInventory).items.slice(0, 5);

  //stupid fix for timeout
  const [handle, setHandle] = useState<NodeJS.Timeout>();
  useNuiEvent('toggleHotbar', () => {
    if (hotbarVisible) {
      setHotbarVisible(false);
    } else {
      if (handle) clearTimeout(handle);
      setHotbarVisible(true);
      setHandle(setTimeout(() => setHotbarVisible(false), 3000));
    }
  });

  return (
    <SlideUp in={hotbarVisible}>
      <div className="hotbar-container">
        {items.map((item) => (
          <div
            className="hotbar-item-slot"
            style={{
              backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : 'none'}`,
            }}
            key={`hotbar-${item.slot}`}
          >
            {isSlotWithItem(item) && (
              <div className="item-slot-wrapper">
                <div className="hotbar-slot-header-wrapper">
                  <div className="inventory-slot-number">{item.slot}</div>
                  <div className="item-slot-info-wrapper">
                    {item.weight > 0 ? (
                      <p className="kyg-weight">
                          {item.weight > 0
                          ? item.weight >= 1000
                              ? item.weight >= 1000000
                              ? `${(item.weight / 1000000).toLocaleString('en-us', { minimumFractionDigits: 2 })}t `
                              : `${(item.weight / 1000).toLocaleString('en-us', { minimumFractionDigits: 2 })}kg `
                              : `${item.weight.toLocaleString('en-us', { minimumFractionDigits: 0 })}g `
                          : ''}
                      </p>
                      ) : (<p></p>)}
                      { item.count ? (<p className="kyg-count">
                          {item.count.toLocaleString('en-us') + ((item.name == 'money' || item.name == 'black_money') ? '' : `x`)}
                      </p>) : (<p></p>) }
                  </div>
                </div>
                <div>
                  <div className="inventory-slot-label-box">
                    <div className="inventory-slot-label-text">
                      {item.metadata?.label ? item.metadata.label : Items[item.name]?.label || item.name}
                    </div>
                    <WeightBar percent={item.durability ?? 1208024102} durability />
                  </div>
                </div>
              </div>
            )}
          </div>
        ))}
      </div>
    </SlideUp>
  );
};

export default InventoryHotbar;
