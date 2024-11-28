# Linux Tasks Repository

## Overview
This repository contains shell commands for completing common Linux tasks, along with screenshots of their outputs.

## File Structure
- `scripts/linux_tasks.sh`: Contains all the Linux commands.
- `Screenshots/`: Contains screenshots of the command outputs.
## Make the Script Executable
-- chmod +x linux_task.sh
## Run the Script


-- ./linux_tasks.sh
 
## Tasks
### File System Navigation
1. **List the contents of the home directory**:

   ![Home Directory](screenshots/list_home.png)

2. **Change the current directory to /var/log and list its contents**:

   ![Var Log](screenshots/var_log.png)


3. **Finding bash executable path**:

    ![Which](screenshots/which_bash.png)

4. **Finding current shell**:

    ![shell](screenshots/which_bash.png)

5. **File and Directory Operations**:

    Creating a directory name `linux-fundamentals` 

    ![Linux_Fundamentals](screenshots/mkdir_linux-fundamentals.png)

    Under the directory creating a another directory named `scripts`
    
    ![Scripts](screenshots/scripts.png)

    Under the directory created a `.txt` file `named example.txt`

    ![exaple.txt](screenshots/example.txt.png)

    Copied `linux_fundamentals/example.txt` to `linux_fundamentals/scripts`
    
    ![copy](screenshots/copy.png)

    Created a `backup` folder under `linux_fundamentals` and moved `linux_fundamentals/example.txt` file to `linux_fundamentals/backup ` folder using `mv` command

    ![backup](screenshots/backup.png)

    Change the permissions of `example.txt` to read and write for the owner, and read-only for the group and others.Verify the permission changes using `ls -l`

    ![mod](screenshots/chmodreport.txt.png)

6. **File-Modification**:
    Creating a user name `student`

    ![File-Modification](screenshots/student-user.png)

    Creating a `exaple.txt` file using `touch` command
    ![File-Modification](screenshots/touch-example.png)

    `sudo chown student example.txt` Changes the owner of the file to the user `student`

    ![File-Modification](screenshots/chownstudent.png)

    Change `group` using command `chgrp`

    ![File-Modification](screenshots/chnggrp.png)



7. **Ownership**:

    Create a directory named `project` in the `home directory`

    
    ![project](screenshots/projects.png)

    
    Create a file named `report.txt` inside the `project` directory

    ![project](screenshots/projects.png)

    Set permissions of `report.txt` to read and write for the owner, and read-only for the group and others
    
    ![project](screenshots/project-report.png)
    
    Set permissions of the `project` directory to read, write, and execute for the owner, and read and execute for the group and others

     ![project](screenshots/chmodprojects.png)
    
    
    Verify the `permission` changes

    ![project](screenshots/verifying%20projects.png)




7. **UserAdd/Modify**:

    Creating a new user name `developer` and making a custom home directory name `developer_home` 
    
    ![UserADD](screenshots/adduser_devlpr.png)
    
    Modifying username `developer` to `devuser`

    ![Mod](screenshots/mod_usr.png)

    Creating a new group name `devgroup` and adding `user` on that group

    ![DevGroup](screenshots/devgroup.png)

    ![DevGroup](screenshots/dev-g.png)

    Set new password and verifying `user`

    ![user](screenshots/ch_pass.png)



8. **Soft/Hard link**:

    Created several files and checking `softlink/hardlink` & their `i-nodes` and observed what happend after deleting that files. After that useing `find` command to find `.txt` file

    ![Soft/Hard_Link](screenshots/hard_soft.png) 





9. **Package_Installation**


    Atfirst tried `apt-update` then I installed a package named `tree` after that  I installed GCP CLI 
    
    ![Tree](screenshots/tree.png)


    ![package](screenshots/installing-gcloud.png)

    Checking version of both `tree` & `Gcloud_CLI`

    ![package](screenshots/version.png)
