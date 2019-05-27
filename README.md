------------------
User Management
------------------

-------------------------------------
Add User in the good  group and with the good rights wish
-------------------------------------


To Create / Add a user to a group that you want to create (or if it already exists)

ansible-playbook   user_to_add.yml  -i  inventory  -v


--------------------------------------
Delete User and Archive a Workspace 
-------------------------------------- 

To delete a User and save (archive) his compressed workspace in .tar format

ansible-playbook   user_to_delete_and_archive.yml  -i  inventory  -v




------------------------
inventory
-----------------------
[group1]
xxx.xxx.xxx.xxx
xxx.xxx.xxx.xxx
.
.
.
.
