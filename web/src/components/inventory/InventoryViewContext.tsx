import React, { createContext, useContext, useEffect, useState } from 'react';

type InventoryViewContextType = {
    showRightInventory: boolean;
    setShowRightInventory: (val: boolean) => void;
    showBodyDamage: boolean;
    setShowBodyDamage: (val: boolean) => void;
};

const InventoryViewContext = createContext<InventoryViewContextType | undefined>(undefined);

export const InventoryViewProvider: React.FC<{ children: React.ReactNode }> = ({ children }) => {
    const [showRightInventory, setShowRightInventory] = useState(true);
    const [showBodyDamage, setShowBodyDamage] = useState(false);

    useEffect(() => {
        const handleKeyDown = (e: KeyboardEvent) => {
            if (e.key === 'q' || e.key === 'Q') {
                setShowRightInventory(false);
                setShowBodyDamage(true);
            } else if (e.key === 'e' || e.key === 'E') {
                setShowRightInventory(true);
                setShowBodyDamage(false);
            }
        };

        window.addEventListener('keydown', handleKeyDown);
        return () => {
            window.removeEventListener('keydown', handleKeyDown);
        };
    }, []);

    return (
        <InventoryViewContext.Provider value={{ showRightInventory, setShowRightInventory, showBodyDamage, setShowBodyDamage }}>
            {children}
        </InventoryViewContext.Provider>
    );
};

export const useInventoryView = () => {
    const context = useContext(InventoryViewContext);
    if (!context) throw new Error('useInventoryView must be used within InventoryViewProvider');
    return context;
};