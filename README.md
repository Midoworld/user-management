------------------
User Management
------------------

-------------------------------------
Add User in the right group and with the right rights
-------------------------------------


To Create / Add a user to a group that you want to create (or if it already exists)

ansible-playbook   user_to_add.yml  -i  inventory  -v


--------------------------------------
Delete User and Archive a Workspace 
-------------------------------------- 

To delete a User and save (archive) his compressed workspace in .tar format

ansible-playbook   user_to_delete_and_archive.yml  -i  inventory  -v
