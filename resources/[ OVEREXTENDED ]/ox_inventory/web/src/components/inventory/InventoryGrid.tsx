import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import LibIcon from '../utils/LibIcon';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';

const PAGE_SIZE = 30;

const InventoryGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);
  return (
    <>
      <div className="inventory-grid-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div>
          <div className="inventory-grid-header-wrapper">
            {inventory.label ? (<p className="kyg-invinfo">
              <span className="icon"><LibIcon icon="seedling"></LibIcon></span>
              <span className="label">{inventory.label}</span>
            </p>) : (<p></p>)}
            {inventory.maxWeight && (<p className="kyg-weightbox">
              <span className="icon">
                <LibIcon icon="bag-shopping"></LibIcon>
              </span>
              <span className="bar"><WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} /></span>
              <span className="size">{
                  inventory.maxWeight >= 1000
                    ? inventory.maxWeight >= 1000000
                      ? `${(weight / 1000000).toLocaleString('en-us', { minimumFractionDigits: 2 })}/${(inventory.maxWeight / 1000000).toLocaleString('en-us', { minimumFractionDigits: 2 })} ton`
                      : `${(weight / 1000).toLocaleString('en-us', { minimumFractionDigits: 2 })}/${(inventory.maxWeight / 1000).toLocaleString('en-us', { minimumFractionDigits: 2 })} kg`
                    : `${weight.toLocaleString('en-us', { minimumFractionDigits: 0 })}/${inventory.maxWeight.toLocaleString('en-us', { minimumFractionDigits: 0 })} g`
                }</span>
            </p>)}
          </div>
        </div>
        <div className="inventory-grid-container" ref={containerRef}>
          <>
            {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
              />
            ))}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
