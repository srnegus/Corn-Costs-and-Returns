--Minimum values for each item by region
SELECT Category, Item, Units, Region, Year, Min(Value) FROM CostReturns
    GROUP BY Item, Region;

--Maximum values for each item by region
SELECT Category, Item, Units, Region, Year, Max(Value) FROM CostReturns
    GROUP BY Item, Region;

--Years where corn production turned a profit by region
SELECT Category, Item, Units, Region, Year, Value FROM CostReturns
    WHERE Item = "Value of production less total costs listed" AND Value > 0;

--Years where corn production didn't turned a profit by region
SELECT Category, Item, Units, Region, Year, Value FROM CostReturns
    WHERE Item = "Value of production less total costs listed" AND Value < 0;
