---
title: "Linux (System Diagnostics)"
slug: "linux-system-diagnostics"
description: "Linux (System Diagnostics) - Notes | References | Cheat-sheet"
tags: [ linux, system-diagnostics, ubuntu ]
cover_image: "notes/covers/linux-system-diagnostics.png"
---



## Using `dmidecode`

[`dmidecode`][1] is a tool for dumping a computer's DMI (some say SMBIOS ) table contents in a human-readable format. This table contains a description of the system's hardware components, as well as other useful pieces of information such as serial numbers and BIOS revision.

### Full DMI Table

```bash
-> sudo dmidecode

Handle 0x0002, DMI type 2, 8 bytes.  Base Board Information
               Manufacturer: Intel
               Product Name: C440GX+
               Version: 727281-001
               Serial Number: INCY92700942
...
```

### Only Memory details
```bash
# Other options are - bios, system, baseboard, chassis, processor, memory, cache, connector, slot
-> sudo dmidecode --type memory
```

### Show total memory slots
```bash
-> sudo dmidecode -t memory | grep -c '^Memory Device$'
2
```

### Show total memory slots (Used)
```bash
-> sudo dmidecode -t memory | grep -c -Po '^\tPart Number: (?!\[Empty\])'
2
```

### Show maximum capacity of the slots
```bash
-> sudo dmidecode -t memory | grep -Po '^\tMaximum Capacity: \K.*'
128 GB
```


  [1]: https://linux.die.net/man/8/dmidecode
