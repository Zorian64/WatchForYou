package org.zorian.service;

import java.util.List;

import org.zorian.model.Role;

public interface RoleService {

	public Role getRole(int id);

	public void addRole(Role role);

	public void updateRole(Role role);

	public void deleteRole(int id);

	public List<Role> getRoles();
	public Role getRoleByName(String roleName);
}
