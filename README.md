# Korean Pokémon Gold and Silver

This is a WIP disassembly of 포켓몬스터 금·은.

It builds the following ROMs:

- Pocket Monsters - Gold Version (K) [C].gbc `sha1: c0ff3999e1093e1af59ef3eea3f1bfd7c1f18a65`
- Pocket Monsters - Silver Version (K) [C].gbc `sha1: cb22d7e03a74dc3a563fde6be8626626b2b392e7`

To set up the repository, see [**INSTALL.md**](INSTALL.md).

## Credits

- The whole repository structure, most ASM files, tools and build scripts originate from pret [**pokegold**][pokegold].
- [**Emulicious**][emulicious] debugger features have been invaluable, navigating the ROM to look for differences with the US release.

## Note

The base ROMs of Gold & Silver are required to build, these should be placed at the top-level directory: `baserom_g.bin` and `baserom_s.bin`.

[pokegold]: https://github.com/pret/pokegold
[emulicious]:https://www.emulicious.net
