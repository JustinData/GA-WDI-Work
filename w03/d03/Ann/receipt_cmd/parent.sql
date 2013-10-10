#parent name 

#avg num of presents per parent 
  SELECT SUM(number_of_item) from receipts WHERE parent = 'Dad'; 

#avg present cost per parent  
  SELECT AVG(price) from receipts WHERE parent = 'Dad';

  #order by price desc (each parent)
  SELECT items from receipts WHERE parent IN ('Dad') ORDER BY price DESC; 
