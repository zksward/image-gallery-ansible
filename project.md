# M5 Project
## Ansible
Create a set of Ansible playbooks that create the VPC, auto-scaler and load balancer from the module 4 project that deploys your image gallery application (below).  Some guidelines:
1. Your playbooks must be invokable from a single playbook named `create_all.yaml`.
2. You must split the process into logical steps and put those steps in separate playbooks (like I did with `create_vpc.yaml` and `create_ec2.yaml` in the videos).  Do not turn in one long playbook in `create_all.yaml`.
3. Your submission must be self-contained (not rely on things on your control machine that are not part of the submission).  For examples, your playbooks will rely on "external resources" (configuration files, scripts etc).  All of these should be packaged together with your yaml files and published on git.  Your playbooks must refer to these external resources using a relative path so that the grader can use "git clone" to clone your repo and successfully run your `create_all.yaml` playbook.
4. A note on RDS: You can create your RDS instance from Ansible but you will need to create a file containing SQL commands to create/configure your database.

## Web Application
Create an image gallery application with the following features/pages:

- All pages except `/login` require an authenticated user (those pages should redirect to `/login` if the user is not logged in).
- All `/admin` pages require administrator credentials (redirect to `/login` if user is not admin).  If you were unable to get the administrative tools to work, you will not receive a deduction but you must at least have a page called `/admin/users` that returns a response ("hello" is fine) and is protected so only the admin can reach it.
- Create a "/" route that provides the "main" menu:
  - upload image link
  - view images link
  - admin link (links to `/admin/users`)
- For upload image: allow the user to upload a file (see Spark and Flask documentation for how to support file uploads).  The image file must be stored in S3 (not in your database!).  Your database must track which files on S3 are owned by which users.  That is, for example, the user "bob" should not be able to see images owned by the user "david".  Include a link back to the main menu.
- View images: a page showing all images that a user has uploaded (the images that the current user "owns") at a reduced size (don't destroy the image aspect ratios, just set the widths to some fixed value).  Clicking on the image should show it at full size.  A button/link should be provided to delete the image.  Include a link back to the main menu.

Your application can be as plain or as fancy as you see fit.  You will not be graded on appearance, only functionality.

## Infrastructure
1. VPC
   - Subnets
   - Route Tables
   - Network ACLs
   - Security Groups
   - Internet Gateway
   - NAT Gateway
   - Endpoints?
2. EC2
   - Launch Template
   - IAM Role
   - User Data Script
   - Autoscaling Group
   - Load balancer
3. S3 - __static__ 
   - Bucket
   - Objects
4. RDS
   - Security Group
   - SQL Script