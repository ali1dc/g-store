/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package lib;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.*;

/**
 *
 * @author Taidg
 */
public class GStoreEntityManager {
    
    private EntityManagerFactory emf;
    private EntityManager em;
    private static GStoreEntityManager gsem;
    
    private GStoreEntityManager(){
        emf = Persistence
            .createEntityManagerFactory("g-storePU");
        em = emf.createEntityManager();
        
    }
    
    public static GStoreEntityManager getInstance(){
        if(gsem==null){
            gsem = new GStoreEntityManager();
        }
        return gsem;
    }
    
    public EntityManager getEntityManager(){
        return em;
    }
    
    public void addAddress(Address address) {
        em.getTransaction().begin();
        em.persist(address); 
        em.getTransaction().commit(); 
    }
    public void removeAddress(Address address) { 
        em.getTransaction().begin();
        Address addressx = em.find(Address.class, address.getAddressID());
        em.remove(addressx); 
        em.getTransaction().commit();
    }
    public Product getProduct(int productID){
        Product p = (Product) em
                        .createNamedQuery("getProductFromID")
                        .setParameter("ProductID", productID)
                        .getSingleResult();
        return p;
    }
    public Product getProduct(String productName){
        Product p = (Product) em
                        .createNamedQuery("getProductFromName")
                        .setParameter("ProductName", productName)
                        .getSingleResult();
        return p;
    }
    
    public void addCategory(Category category) {
        em.getTransaction().begin();
        em.persist(category); 
        em.getTransaction().commit(); 
    }
    public void removeCategory(Category category) { 
        em.getTransaction().begin();
        Category categoryx = em.find(Category.class, category.getCategoryID());
        em.remove(categoryx); 
        em.getTransaction().commit();
    }
    
    public void addOrder(Order order) {
        em.getTransaction().begin();
        em.persist(order); 
        em.getTransaction().commit(); 
    }
    public void removeOrder(Order order) { 
        em.getTransaction().begin();
        Order orderx = em.find(Order.class, order.getOrderID());
        em.remove(orderx); 
        em.getTransaction().commit();
    }
    
    public void addProduct(Product product) {
        em.getTransaction().begin();
        em.persist(product); 
        em.getTransaction().commit(); 
    }
    public void removeProduct(Product product) { 
        em.getTransaction().begin();
        Product productx = em.find(Product.class, product.getProductID());
        em.remove(productx); 
        em.getTransaction().commit();
    }
    
    public void addShoppingCart(ShoppingCart shoppingCart) {
        em.getTransaction().begin();
        em.persist(shoppingCart); 
        em.getTransaction().commit(); 
    }
    public void removeShoppingCart(ShoppingCart shoppingCart) { 
        em.getTransaction().begin();
        ShoppingCart shoppingcartx = em.find(ShoppingCart.class, shoppingCart.getShoppingCartID());
        em.remove(shoppingcartx); 
        em.getTransaction().commit();
    }
    
}
