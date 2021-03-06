zfs\_linux Cookbook
==================
Installs & configures zfs on linux. Currently only targeting Ubuntu.

Requirements
------------

Ubuntu 12.04+

Usage
-----
#### zfs\_linux::default
Just include `zfs_linux` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[zfs_linux]"
  ]
}
```

#### zfs\_linux::auto-snapshot
Installs the zfs-auto-snapshot package, which automatically sets up rotating snapshots (hourly snapshots kept for a day, daily snapshots kept for a month, etc).

#### zfs\_linux::snapshot-pruning
Complements the auto-snapshot recipe by providing a mechanism (via attributes) for controlling how many snapshots are retained on a daily basis. This recipe is included in the default recipe, as action is only taken if attributes like the following are set:

```json
"zfs": {
  "filesystems": [
    {
      "zfsfilesytem1": {
        "zpool": "zpool1",
        "snapshot_retention": {
          "monthly": "3",
          "weekly": "2",
          "daily": "15"
        }
      }
    },
    ...
  ]
}
```

The retention values (each are optional) dicate the number of the most recent snapshots to keep. So in the example above, each day the snapshots of zpool1/zfsfilesystem1 will be evaluated and only the 15 most recent daily snapshots will be kept, etc. For any given snapshot type you can set the value to "0" to have all snapshots of that type deleted.

#### zfs\_linux::auto-scrub
Uses cron.d (via the cron cookbook) to setup cron jobs on Sunday morning for each zpool. If greater than 4 zpools are present, runs the checks once a month on the first Sunday.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
 Copyright 2013, Biola University 

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

