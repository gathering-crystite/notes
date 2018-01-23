---
categories:
  - Other
tags:
  - chef
  - chef-client
  - knife
  - ssh
title: "Use Chef's knife ssh command to run chef-client on multiple instances"
date: "2018-01-22T21:26:37-08:00"
draft: false
---
Example using Chef's knife command to run chef-client on all instances using the dev_identity.pem.
```
knife ssh "role:*" "chef-client" -i ~/.ec2/dev_identity.pem
```

