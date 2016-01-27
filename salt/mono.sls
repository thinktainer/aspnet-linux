mono:
  pkgrepo.managed:
    - humanname: Mono Project Repository
    - name: deb http://download.mono-project.com/repo/debian wheezy main
    - dist: wheezy
    - file: /etc/apt/sources.list.d/mono.list
    - keyid: 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
    - keyserver: keyserver.ubuntu.com

mono.packages:
  pkg.installed:
    - pkgs:
      - mono-complete
    - require:
      - pkgrepo: deb http://download.mono-project.com/repo/debian wheezy main

