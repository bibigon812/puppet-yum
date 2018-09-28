
# yum

## Table of Contents

**Classes**

* [`yum`](#yum): Manages yum repos.

## Classes

### yum

This class manages yum repos.

#### Examples

#####

```puppet
class { 'yum':
  repos => {
    repo_title => {
      ..,
    }
  }
}
```

#### Parameters

The following parameters are available in the `yum` class.

##### `repos`

Data type: `Hash`

A hash with attributes for the yumrepo resource
(https://puppet.com/docs/puppet/5.3/types/yumrepo.html).
