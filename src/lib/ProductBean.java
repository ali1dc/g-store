/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/**
 *
 * @author Taidg
 */
public class ProductBean {
    
    private Product p, conOne, conTwo, conThree, conFour, conFive;
    
    public ProductBean(int id){
        p = GStoreDataAccess.getInstance().getProduct(id);   
        Collection<Product> catColl = GStoreDataAccess.getInstance().
                    getRelatedProductsByProductID(id);
        HashMap<Integer, Product> prodMap = new HashMap<Integer, Product>();
        HashMap<Integer, Integer> idMap = new HashMap<Integer, Integer>();
        int i=1;
        for(Product pr: catColl){
            prodMap.put(pr.getProductID(), pr);
            idMap.put(i, pr.getProductID());
            i++;
        }
        prodMap.remove(id);
        ArrayList<Integer> selections = new ArrayList<Integer>();
        while(selections.size()<5){
            boolean isRepeat=false;
            double dRand = Math.floor(Math.random()*9);
            int rand = (int)dRand;
            rand = rand + 1;
            for(Integer integ: selections){
                if(integ==rand){
                    isRepeat = true;
                }
            }
            if(!isRepeat){
                selections.add(rand);
                
            }
        }
        int one, two, three, four, five;
        one = idMap.get(selections.get(0));
        two = idMap.get(selections.get(1));
        three = idMap.get(selections.get(2));
        four = idMap.get(selections.get(3));
        five = idMap.get(selections.get(4));
        
        conOne = prodMap.get(one);
        conTwo = prodMap.get(two);
        conThree = prodMap.get(three);
        conFour = prodMap.get(four);
        conFive = prodMap.get(five);
    }
    
    public Product getProduct(){
        return p;
    }
    
    public Product getFirstProductToConsider(){
        return conOne;
    }
    
    public Product getSecondProductToConsider(){
        return conTwo;
    }
    
    public Product getThirdProductToConsider(){
        return conThree;
    }
    
    public Product getFourthProductToConsider(){
        return conFour;
    }
    
    public Product getFifthProductToConsider(){
        return conFive;
    }
    
}
