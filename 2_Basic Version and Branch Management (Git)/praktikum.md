
WinX@DESKTOP-P30NI2Q MINGW64 ~
$ ls
'3D Objects'/
'Adobe Flash Builder 4.6'/
 Adobe.Creative.Suite.6.Master.Collection-P2P/
 AndroidStudioProjects/
 AppData/
'Application Data'@
 Contacts/
 Cookies@
 Desktop/
 Documents/
 Downloads/
 Favorites/
 Links/
'Local Settings'@
 MicrosoftEdgeBackups/
 Music/
'My Documents'@
 NTUSER.DAT
 NTUSER.DAT{fd9a35dd-49fe-11e9-aa2c-248a07783950}.TM.blf
 NTUSER.DAT{fd9a35dd-49fe-11e9-aa2c-248a07783950}.TMContainer00000000000000000001.regtrans-ms
 NTUSER.DAT{fd9a35dd-49fe-11e9-aa2c-248a07783950}.TMContainer00000000000000000002.regtrans-ms
 NetHood@
'New folder'/
 OneDrive/
 Pictures/
 PrintHood@
 Recent@
'Saved Games'/
 Searches/
 SendTo@
'Start Menu'@
 Templates@
 Videos/
'VirtualBox VMs'/
 battery-report.html
 clone/
 ntuser.dat.LOG1
 ntuser.dat.LOG2
 ntuser.ini
 source/

WinX@DESKTOP-P30NI2Q MINGW64 ~
$ cd Documents/

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents
$ ls
 24-0.jpg
'ALMA ATA MOBILE.docx'
 Audacity/
'BIDIK MISI.doc'
 BIMTEK.pdf
'Backup_of_MID Multimedia.cdr'
'Backup_of_MacharaniR 8040190071.cdr'
'Backup_of_TUGAS 1 MULTIMEDIA.cdr'
 Bandicam/
'Book1 (Autosaved).xlsx'
 Corel/
'Corel Cloud'/
'Custom Office Templates'/
'DYNAMIXEL Wizard2'/
'Diagnosa Pemahaman.pdf'
'Diagnosa Tingkat Pemahaman Mahasiswa Universitas Dinamika Bangsa Dalam Pembelajaran Daring - Google Formulir.pdf'
 GitHub/
 IBM/
 Journal.docx
 Journal.pdf
'MID MULTIMEDIA.png'
'MID Multimedia.cdr'
'MacharaniR 8040190071.cdr'
'MacharaniR 8040190071.png'
'MacharaniR 8040190071.txt'
'My Music'@
'My Palettes'/
'My Pictures'@
'My Videos'@
 OUTPUT.doc
 Pengunjung.drawio
'Perhitungan KNN.drawio'
'Program desa.docx'
'Proposal_Kegiatan_Kontes_Robot_2021[1].docx'
 REKOMENDASI_PRODI.docx
'SBI-Macharani R-8040190071-MidTerm.pdf'
'SBI_ MacharaniR_8040190071_Strategy&Pricing.pdf'
'SBI_Macharani R_8040190071_CREATIVE AND INNOVATION.docx'
'SBI_Macharani R_8040190071_CREATIVE AND INNOVATION.pdf'
'SBI_Macharani R_8040190071_Product Development Management.docx'
'SBI_Macharani R_8040190071_Product Development Management.pdf'
'SBI_MacharaniR_8040190071_StartUp Growth.pdf'
'Surat Keterangan Dari ITB.pdf'
'Surat Rekomendasi Altera Rani.docx'
'TUGAS 1 MULTIMEDIA.cdr'
'USE CASE PENYEWAAN DVD.drawio'
 Untitled2.sav
'Use case penyewaan fix.drawio'
'Use case tabel.drawio'
'Visual Studio 2019'/
 Wondershare/
'Wondershare Filmora 9'/
 Youcam/
 Zoom/
 airy.jpg
 airy2.jpg
 ais.doc
 ais.pdf
 aplikasi-booking-hotel-5.jpg
 desktop.ini
'latihan php 1.php'
 rek.doc
 rek.pdf
'revisi rani.docx'
'revisi rani.pdf'
'sequence contoh.drawio'
'soal pak ibnu.docx'
'use case rpl.drawio'
'~$ogram desa.docx'

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents
$ mkdir alterra

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents
$ cd alterra/

$ git clone https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
Cloning into 'Flutter_Macharani-Raschintasofi'...
fatal: protocol 'https' is not supported

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra
$ gh repo clone MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi
bash: gh: command not found

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra
$ git clone git@github.com:MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
Cloning into 'Flutter_Macharani-Raschintasofi'...
The authenticity of host 'github.com (20.205.243.166)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra
$ git clone
fatal: You must specify a repository to clone.

usage: git clone [<options>] [--] <repo> [<dir>]

    -v, --verbose         be more verbose
    -q, --quiet           be more quiet
    --progress            force progress reporting
    --reject-shallow      don't clone shallow repository
    -n, --no-checkout     don't create a checkout
    --bare                create a bare repository
    --mirror              create a mirror repository (implies bare)
    -l, --local           to clone from a local repository
    --no-hardlinks        don't use local hardlinks, always copy
    -s, --shared          setup as shared repository
    --recurse-submodules[=<pathspec>]
                          initialize submodules in the clone
    --recursive ...       alias of --recurse-submodules
    -j, --jobs <n>        number of submodules cloned in parallel
    --template <template-directory>
                          directory from which templates will be used
    --reference <repo>    reference repository
    --reference-if-able <repo>
                          reference repository
    --dissociate          use --reference only while cloning
    -o, --origin <name>   use <name> instead of 'origin' to track upstream
    -b, --branch <branch>
                          checkout <branch> instead of the remote's HEAD
    -u, --upload-pack <path>
                          path to git-upload-pack on the remote
    --depth <depth>       create a shallow clone of that depth
    --shallow-since <time>
                          create a shallow clone since a specific time
    --shallow-exclude <revision>
                          deepen history of shallow clone, excluding rev
    --single-branch       clone only one branch, HEAD or --branch
    --no-tags             don't clone any tags, and make later fetches not to follow them
    --shallow-submodules  any cloned submodules will be shallow
    --separate-git-dir <gitdir>
                          separate git dir from working tree
    -c, --config <key=value>
                          set config inside the new repository
    --server-option <server-specific>
                          option to transmit
    -4, --ipv4            use IPv4 addresses only
    -6, --ipv6            use IPv6 addresses only
    --filter <args>       object filtering
    --remote-submodules   any cloned submodules will use their remote-tracking branch
    --sparse              initialize sparse-checkout file to include only files at root


WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra
$ git clone https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
Cloning into 'Flutter_Macharani-Raschintasofi'...
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), done.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra
$ ls
Flutter_Macharani-Raschintasofi/

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra
$ cd Flutter_Macharani-Raschintasofi/

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (main)
$ ls
README.md

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (main)
$ git branch -m master

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git commit -m "initial upload"
On branch master
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git push -u origin  master
Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote:
remote: Create a pull request for 'master' on GitHub by visiting:
remote:      https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi/pull/new/master
remote:
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
 * [new branch]      master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git branch --help

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git branch -m main master
fatal: A branch named 'master' already exists.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git branch -d main
error: branch 'main' not found.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git branch
* master

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git pull
Already up to date.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ ld
bash: ld: command not found

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git pull
Already up to date.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ cd 2_Basic\ Version\ and\ Branch\ Management\ \(Git\)/

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi/2_Basic Version and Branch Management (Git) (master)
$ touch summary.md

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi/2_Basic Version and Branch Management (Git) (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi/2_Basic Version and Branch Management (Git) (master)
$ git commit -m "init"
[master 063d3e3] init
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 2_Basic Version and Branch Management (Git)/summary.md

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi/2_Basic Version and Branch Management (Git) (master)
$ git push -u origin  master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (4/4), 406 bytes | 135.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
   770cc88..063d3e3  master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi/2_Basic Version and Branch Management (Git) (master)
$ cd ..

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git che
checkout      cherry        cherry-pick

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git checkout development
error: pathspec 'development' did not match any file(s) known to git

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git pull
From https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi
 * [new branch]      development -> origin/development
 * [new branch]      featureA    -> origin/featureA
 * [new branch]      featureB    -> origin/featureB
Already up to date.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git checkout development
Switched to a new branch 'development'
Branch 'development' set up to track remote branch 'development' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ code hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ git commit -m "create hello_world.py
> "
[development cb4f054] create hello_world.py
 1 file changed, 1 insertion(+)
 create mode 100644 hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ git push -u origin development
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 323 bytes | 323.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
   063d3e3..cb4f054  development -> development
Branch 'development' set up to track remote branch 'development' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ git checkout featureA
Switched to a new branch 'featureA'
Branch 'featureA' set up to track remote branch 'featureA' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git pull
Already up to date.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git pull development
fatal: 'development' does not appear to be a git repository
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git fetch -p origin development:development

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git fetch

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git merge development
Updating 063d3e3..cb4f054
Fast-forward
 hello_world.py | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md   hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git checkout featureB
Switched to a new branch 'featureB'
Branch 'featureB' set up to track remote branch 'featureB' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ git merge development
Updating 063d3e3..cb4f054
Fast-forward
 hello_world.py | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md   hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ git checkout featureA
Switched to branch 'featureA'
Your branch is ahead of 'origin/featureA' by 1 commit.
  (use "git push" to publish your local commits)


WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ code hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git checkout development
Switched to branch 'development'
M       hello_world.py
Your branch is up to date with 'origin/development'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ code hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md   hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (development)
$ git checkout featureA
Switched to branch 'featureA'
M       hello_world.py
Your branch is ahead of 'origin/featureA' by 1 commit.
  (use "git push" to publish your local commits)

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ code hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git commit -m "edit hello_worldd.py"
[featureA 30329db] edit hello_worldd.py
 1 file changed, 1 insertion(+), 1 deletion(-)

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git push -u origin  featureA
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 302 bytes | 302.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
   063d3e3..30329db  featureA -> featureA
Branch 'featureA' set up to track remote branch 'featureA' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureA)
$ git checkout featureB
Switched to branch 'featureB'
Your branch is ahead of 'origin/featureB' by 1 commit.
  (use "git push" to publish your local commits)

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md   hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ code hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ git commit -m "edit hello_worlddd"
[featureB f71d62a] edit hello_worlddd
 1 file changed, 1 insertion(+), 1 deletion(-)

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ git push -u origin  featureB
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 300 bytes | 300.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
   063d3e3..f71d62a  featureB -> featureB
Branch 'featureB' set up to track remote branch 'featureB' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (featureB)
$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash README.md
fatal: unknown subcommand: README.md

usage: git stash list [<options>]
   or: git stash show [<options>] [<stash>]
   or: git stash drop [-q|--quiet] [<stash>]
   or: git stash ( pop | apply ) [--index] [-q|--quiet] [<stash>]
   or: git stash branch <branchname> [<stash>]
   or: git stash clear
   or: git stash [push [-p|--patch] [-k|--[no-]keep-index] [-q|--quiet]
          [-u|--include-untracked] [-a|--all] [-m|--message <message>]
          [--pathspec-from-file=<file> [--pathspec-file-nul]]
          [--] [<pathspec>...]]
   or: git stash save [-p|--patch] [-k|--[no-]keep-index] [-q|--quiet]
          [-u|--include-untracked] [-a|--all] [<message>]


WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash list

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git commit -m "coba stash"
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git commit -m "coba stash"
[master fabfa7c] coba stash
 1 file changed, 1 insertion(+)
 create mode 100644 sampah.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash list

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git diff --stage
error: invalid option: --stage

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git diff --staged

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash
No local changes to save

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash list

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash apply
No stash entries found.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md   sampah.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ rm sampah.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash
Saved working directory and index state WIP on master: fabfa7c coba stash

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git commit -m "hapus sampah"
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash
No local changes to save

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git stash
No local changes to save

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git push -u origin master
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git pull
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), 2.46 KiB | 68.00 KiB/s, done.
From https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi
   063d3e3..a985142  master     -> origin/master
   f71d62a..71be656  featureB   -> origin/featureB
hint: Waiting for your editor to close the file...
[main 2022-02-20T10:18:55.394Z] update#setState idle
[main 2022-02-20T10:18:55.498Z] ExtensionHostStarterWorker created
[main 2022-02-20T10:18:57.754Z] Starting extension host with pid 9112 (fork() took 22 ms).
[main 2022-02-20T10:18:57.755Z] ExtensionHostStarterWorker.start() took 26 ms.
[main 2022-02-20T10:19:25.412Z] update#setState checking for updates
[main 2022-02-20T10:19:25.722Z] update#setState idle
[main 2022-02-20T10:19:33.614Z] Waiting for extension host with pid 9112 to exit.
[main 2022-02-20T10:19:33.654Z] Extension host with pid 9112 exited with code: 0, signal: null.
Merge made by the 'recursive' strategy.
 hello_world.py | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 hello_world.py

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git pull
Already up to date.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git push -u origin master
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 4 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (5/5), 552 bytes | 276.00 KiB/s, done.
Total 5 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
   a985142..c280ac7  master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ ls
'2_Basic Version and Branch Management (Git)'/   README.md   hello_world.py   sampah.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ rm sampah.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git add .

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git commit -m "update"
[master 94e0ec6] update
 1 file changed, 1 deletion(-)
 delete mode 100644 sampah.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git push -u origin master
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 4 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 234 bytes | 234.00 KiB/s, done.
Total 2 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/MacharaniRaschintasofi/Flutter_Macharani-Raschintasofi.git
   c280ac7..94e0ec6  master -> master
Branch 'master' set up to track remote branch 'master' from 'origin'.

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git --no-pager log > log.txt
bash: $'\302\226git': command not found

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$ git log > log.txt

WinX@DESKTOP-P30NI2Q MINGW64 ~/Documents/alterra/Flutter_Macharani-Raschintasofi (master)
$
