/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

//import javax.persistence.EntityManager;

/**
 *
 * @author Taidg
 */
public class Main {
    
    public static void main(String[] args){

        GStoreDataAccess gs = GStoreDataAccess.getInstance();
        for(Product p: gs.getRelatedProductsByProductID(1)){
            System.out.println(p.getProductName());
        }
    }
    
}
