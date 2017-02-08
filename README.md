## Welcome to Darshan Tools

This is a suite of simple tools to help the user to visualize performance data from Darshan, without being familiar exactly with all the commands.

### Instructions

* Connect to the system with ```ssh -Y```
* Edit the script open_darshan.sh and declare for the variable darshan_path the path where the logs are saved

* To load Darshan data for your last experiment on the **same** day, execute 

```
./open_darshan.sh
```
* To load darshan data from specific job, execute 

```
./open_darshan.sh job_id
```
### ToDo
- [ ] Organize into folders

