# bash-lib

DRY Principle is don't write same code again and again so, reducing redundancy.

**Install**

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/salmanwaheed/bash-lib/master/install.sh)"
```

**To Use**

```bash
# check whether command is existed or not
has_pkg <COMMAND>

# install package without foreground process
ins_pkg <PACKAGE-NAME>

# register package without foreground process
reg_pkg <PACKAGE-NAME>

# to remove package without foreground process
rm_pkg <PACKAGE-NAME>

# get me some randon values
random <STRING> <LIMIT>
```

**For development or contribution**

* Download repo with any project name.
* You must use `export BL_ENV='dev'` for development environment or,
* `echo 'export BL_ENV='dev' >> ~/.zshrc or ~/.bashrc` 
* to remove dev environment `unset BL_ENV`
