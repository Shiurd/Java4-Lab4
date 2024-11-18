package org.example.lab4.repository;

import org.example.lab4.entity.NhanVien;
import org.example.lab4.utilities.HibernateConnection;

import java.util.List;

public class NhanVienDAO {

    public List<NhanVien> findAll(){
        try(var session = HibernateConnection.getFACTORY().openSession()){
            var query = session.createQuery("FROM NhanVien", NhanVien.class);
            return query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public NhanVien findById(int id){
        try(var session = HibernateConnection.getFACTORY().openSession()){
            return session.get(NhanVien.class, id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void save(NhanVien nhanVien){
        try(var session = HibernateConnection.getFACTORY().openSession()){
            session.beginTransaction();
            session.saveOrUpdate(nhanVien);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(NhanVien nhanVien){
        try(var session = HibernateConnection.getFACTORY().openSession()){
            session.beginTransaction();
            session.delete(nhanVien);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(NhanVien nhanVien){
        try(var session = HibernateConnection.getFACTORY().openSession()){
            session.beginTransaction();
            session.update(nhanVien);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
