# rsa_nw_sigma_wrapper
wrapper for sigma SIEM rules

output like this

```
/root/sigma/sigma-master/rules/windows/builtin/win_susp_sysvol_access.yml
((device.class='windows hosts') && (event.source='microsoft-windows-sysmon') && (reference.id='1') && (param regex '.*\\SYSVOL\.*\\policies\.*'))
((device.class='windows hosts') && (event.source='microsoft-windows-security-auditing') && (reference.id='4688') && (param regex '.*\\SYSVOL\.*\\policies\.*'))
```


```
/root/sigma/sigma-master/rules/windows/builtin/win_susp_security_eventlog_cleared.yml
((device.class='windows hosts') && (event.source='microsoft-windows-security-auditing') && (reference.id = '517', '1102'))
```

```
/root/sigma/sigma-master/rules/windows/builtin/win_susp_powershell_hidden_b64_cmd.yml
((device.class='windows hosts') && (event.source='microsoft-windows-security-auditing') && (reference.id='4688') && (process contains 'powershell.exe') && (param contains ' hidden ') && (param contains 'AGkAdABzAGEAZABtAGkAbgAgAC8AdAByAGEAbgBzAGYAZQByA', 'aXRzYWRtaW4gL3RyYW5zZmVy', 'IAaQB0AHMAYQBkAG0AaQBuACAALwB0AHIAYQBuAHMAZgBlAHIA', 'JpdHNhZG1pbiAvdHJhbnNmZX', 'YgBpAHQAcwBhAGQAbQBpAG4AIAAvAHQAcgBhAG4AcwBmAGUAcg', 'Yml0c2FkbWluIC90cmFuc2Zlc', 'AGMAaAB1AG4AawBfAHMAaQB6AGUA', 'JABjAGgAdQBuAGsAXwBzAGkAegBlA', 'JGNodW5rX3Npem', 'QAYwBoAHUAbgBrAF8AcwBpAHoAZQ', 'RjaHVua19zaXpl', 'Y2h1bmtfc2l6Z', 'AE8ALgBDAG8AbQBwAHIAZQBzAHMAaQBvAG4A', 'kATwAuAEMAbwBtAHAAcgBlAHMAcwBpAG8Abg', 'lPLkNvbXByZXNzaW9u', 'SQBPAC4AQwBvAG0AcAByAGUAcwBzAGkAbwBuA', 'SU8uQ29tcHJlc3Npb2', 'Ty5Db21wcmVzc2lvb', 'AE8ALgBNAGUAbQBvAHIAeQBTAHQAcgBlAGEAbQ', 'kATwAuAE0AZQBtAG8AcgB5AFMAdAByAGUAYQBtA', 'lPLk1lbW9yeVN0cmVhb', 'SQBPAC4ATQBlAG0AbwByAHkAUwB0AHIAZQBhAG0A', 'SU8uTWVtb3J5U3RyZWFt', 'Ty5NZW1vcnlTdHJlYW', '4ARwBlAHQAQwBoAHUAbgBrA', '5HZXRDaHVua', 'AEcAZQB0AEMAaAB1AG4Aaw', 'LgBHAGUAdABDAGgAdQBuAGsA', 'LkdldENodW5r', 'R2V0Q2h1bm', 'AEgAUgBFAEEARABfAEkATgBGAE8ANgA0A', 'QASABSAEUAQQBEAF8ASQBOAEYATwA2ADQA', 'RIUkVBRF9JTkZPNj', 'SFJFQURfSU5GTzY0', 'VABIAFIARQBBAEQAXwBJAE4ARgBPADYANA', 'VEhSRUFEX0lORk82N', 'AHIAZQBhAHQAZQBSAGUAbQBvAHQAZQBUAGgAcgBlAGEAZA', 'cmVhdGVSZW1vdGVUaHJlYW', 'MAcgBlAGEAdABlAFIAZQBtAG8AdABlAFQAaAByAGUAYQBkA', 'NyZWF0ZVJlbW90ZVRocmVhZ', 'Q3JlYXRlUmVtb3RlVGhyZWFk', 'QwByAGUAYQB0AGUAUgBlAG0AbwB0AGUAVABoAHIAZQBhAGQA', '0AZQBtAG0AbwB2AGUA', '1lbW1vdm', 'AGUAbQBtAG8AdgBlA', 'bQBlAG0AbQBvAHYAZQ', 'bWVtbW92Z', 'ZW1tb3Zl'))
```
