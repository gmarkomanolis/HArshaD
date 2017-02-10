## Welcome to HArshaD

This is a suite of simple tools to help the user to Handle Darshan Data without being familiar exactly with specific commands.

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

The PDF file will be created in the folder experiments/year/month/executable/ (v0.2+)

### Releases

{% for relea in site.github.releases %}

**Version**: {{ relea.tag_name }} 

Date: {{ relea.published_at }}

Changelog: 

{{ relea.body }}

[Download]({{ relea.tarball_url }}) 

{% endfor %}


### Testbed platform

The scripts were tested with CRAY-XC40 ShaheenII and Darshan v2.3.1

### ToDo

- [X] Automatic organization into folders (v0.2)
- [ ] Adapt with newer Darshan version

