/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import javax.persistence.EntityManager;

/**
 *
 * @author Taidg
 */
public class Main {
    
    public static void main(String[] args){
        Product p;
        EntityManager em = GStoreEntityManager.getInstance().getEntityManager();
        p = (Product) em.createNamedQuery("getProduct").setParameter("ProductID", 50).getSingleResult();
//        Product test = new Product();
//        test.setProductID(12);
//        test.setASIN("12");
//        test.setCategoryName("Watches");
//        test.setProductName("Invicta Watch");
//        test.setProductDescription("Invicta II chronograph diamond");
//        test.setQuantityInStock(10);
//        test.setPrice(199.99);
//        test.setIndexImage("images/Product_Images/index_size/invicta_watch_index.jpg");
//        test.setProductImage("images/Product_Images/index_size/invicta_watch_product.jpg");
//        
//            em.getTransaction().begin();
//            em.persist(test);
//            em.getTransaction().commit();
//            
        
        System.out.println(p.getProductName());
        
    }
    
}
