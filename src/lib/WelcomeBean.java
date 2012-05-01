/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import java.util.ArrayList;

/**
 *
 * @author Taidg
 */
public class WelcomeBean {
    
    Product showOne, showTwo, showThree, showFour, showFive;
    GStoreDataAccess da = GStoreDataAccess.getInstance();
    ArrayList<Integer> temp;
    
    public WelcomeBean(){
        double cat = Math.floor(Math.random()*3);
        int catint = (int) cat;
        temp = new ArrayList<Integer>();
        while(temp.size()<5){
            boolean isRepeat=false;
            int num = getRandInt();
            num = num+1+catint*10;
            for(Integer i: temp){
                if(i==num){
                    isRepeat = true;
                }
            }
           
            if(!isRepeat){
                temp.add(num);
                System.out.println("Random number is "+num);
            }
        }
        for(Integer i: temp){
            System.out.println("Temp "+i);
        }
    }
    
    public Product getShowOne(){
       
        return da.getProduct(temp.get(0));
    }
    
    public Product getShowTwo(){
        return da.getProduct(temp.get(1));
    }
    
    public Product getShowThree(){
        return da.getProduct(temp.get(2));
    }
    
    public Product getShowFour(){
        return da.getProduct(temp.get(3));
    }
    
    public Product getShowFive(){
        return da.getProduct(temp.get(4));
    }
    
    public static int getRandInt(){      
        double dRand = Math.floor(Math.random()*10);
        int rand = (int)dRand;
        return rand;
    }
    
    
    
}
