## Welcome to Darshan Tools

This is a suite of simple tools to help the user to visualize performance data from Darshan, without being familiar exactly with all the commands.

### Releases
{{ site.github.releases[0].tag_name }}

{{ site.github.releases[0].body }}
{{ site.github.releases[0].tarball_url }}

{% for repository in site.github.public_repositories %}
   {% if repository.name=="darshan_tools" %}
  * [{{ repository.name }}]({{ repository.html_url }})  
   {% endif %}
{% endfor %}

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

