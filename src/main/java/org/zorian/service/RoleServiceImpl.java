package org.zorian.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zorian.dao.RoleDAO;
import org.zorian.model.Role;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleDAO roleDAO;

	public Role getRole(int id) {
		return roleDAO.getRole(id);
	}

	@Override
	public void addRole(Role role) {
		roleDAO.addRole(role);
		
	}

	@Override
	public void updateRole(Role role) {
		roleDAO.updateRole(role);
		
	}

	@Override
	public void deleteRole(int id) {
		roleDAO.deleteRole(id);
		
	}

	@Override
	public List<Role> getRoles() {
		return roleDAO.getRoles();
	}

	@Override
	public Role getRoleByName(String roleName) {
		// TODO Auto-generated method stub
		return roleDAO.getRoleByName(roleName);
	}

}
