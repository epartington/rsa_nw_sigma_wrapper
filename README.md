# rsa_nw_sigma_wrapper
wrapper for sigma SIEM rules

output like this
###/root/sigma/sigma-master/rules/windows/builtin/win_susp_sysvol_access.yml

```
((device.class='windows hosts') && (event.source='microsoft-windows-sysmon') && (reference.id='1') && (param regex '.*\\SYSVOL\.*\\policies\.*'))
((device.class='windows hosts') && (event.source='microsoft-windows-security-auditing') && (reference.id='4688') && (param regex '.*\\SYSVOL\.*\\policies\.*'))
```

###/root/sigma/sigma-master/rules/windows/builtin/win_susp_security_eventlog_cleared.yml

```
((device.class='windows hosts') && (event.source='microsoft-windows-security-auditing') && (reference.id = '517', '1102'))
```
