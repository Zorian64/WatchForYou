package org.zorian.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.zorian.model.Role;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

@Repository
public class RoleDAOImpl implements RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	public Role getRole(int id) {
		Role role = (Role) currentSession().get(Role.class, id);
		return role;
	}

	@Override
	public void addRole(Role role) {
		
		currentSession().save(role);
		
	}

	@Override
	public void updateRole(Role role) {
		Role roleToUpdate = getRole(role.getId());
		roleToUpdate.setRoleName(role.getRoleName());
		currentSession().update(roleToUpdate);
	}

	@Override
	public void deleteRole(int id) {
		Role role = getRole(id);
		if (role != null)
			currentSession().delete(role);
	}

	@Override
	@SuppressWarnings("unchecked")

	public List<Role> getRoles() {
		return currentSession().createQuery("from Role").list();
	}

	@Override
	public Role getRoleByName(String roleName) {
		Role role = (Role) currentSession().get(Role.class, roleName);
		return role;
	}

}
