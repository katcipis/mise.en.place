IFS = ()

date = "2016.10.01"
filename = "archlinux-" +$date+ "-dual.iso"

-test -f $filename

if $status != "0" {
    echo "Downloading arch linux ISO"
    wget "http://archlinux.c3sl.ufpr.br/iso/" +$date+"/"+$filename
    echo "Done downloading, starting VM setup"
}

echo "Building customized ISO"

basedir <= pwd | xargs echo -n
workdir = $basedir + "/.isoworkdir"
mountdir = "/tmp/mnt"

echo "Setting up"

rm -rf $workdir
rm -rf $mountdir
mkdir -p $mountdir

echo "Done, starting building ISO"

isopath = $basedir + "/" + $filename
echo "ISO file: "$isopath

mount -t iso9660 -o loop $isopath $mountdir
cp -a $mountdir $workdir
umount $mountdir

echo "Customizing ISO"
cd $workdir + "/arch/x86_64"
unsquashfs airootfs.sfs

miseinpace = $workdir + "/arch/x86_64/squashfs-root/mise.in.place"

mkdir -p $miseinpace
cp $basedir + "/Makefile" $miseinpace
cp -r $basedir + "/cfg" $miseinpace
cp -r $basedir + "/scripts" $miseinpace

echo "Creating new root FS"
rm airootfs.sfs
mksquashfs squashfs-root airootfs.sfs
rm -r squashfs-root
md5sum airootfs.sfs > airootfs.md5

echo "Baking new ISO"
cd $workdir
isodescription = "KATCIPIS-ARCH-" + $date
isofilename = $basedir + "/katcipis-" + $filename
genisoimage -l -r -J -V $isodescription -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table -c isolinux/boot.cat -o $isofilename ./

echo "Done"
