---
categories:
  - Others
tags:
  - kerberos
  - kinit test
title: "Which-Is-Kerberos-Admin-Server"
authors: []
date: "2018-01-22T21:16:52-08:00"
draft: false
---

To see which keytab server your client is trying to authenticate, you can run these commands.

```
export KRB5_TRACE=/dev/stdout
kinit -k -t username.keytab username@EC2.INTERNAL -V
```

