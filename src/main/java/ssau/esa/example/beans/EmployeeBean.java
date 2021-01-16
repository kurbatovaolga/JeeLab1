package ssau.esa.example.beans;

import ssau.esa.example.entity.Employee;

import javax.ejb.Singleton;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Collection;

@Singleton
public class EmployeeBean {

    @PersistenceContext(unitName = "esa")
    private EntityManager em;

    public Collection<Employee> findAll(){
        return em.createQuery("SELECT c FROM Employee c", Employee.class).getResultList();
    }
}
