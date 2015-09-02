package org.zorian.dao;

import java.util.List;

import org.zorian.model.Role;

public interface RoleDAO {
	
	public Role getRole(int id);
	public Role getRoleByName(String roleName);
	public void addRole(Role role);

	public void updateRole(Role role);

	public void deleteRole(int id);

	public List<Role> getRoles();

}
