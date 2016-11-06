IFS = ()

year = "2016"
month = "10"
date = $year + "." + $month + ".01"
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
chdir($workdir + "/arch/x86_64")
unsquashfs airootfs.sfs

miseinpace = $workdir + "/arch/x86_64/squashfs-root/home/mise.in.place"

mkdir -p $miseinpace
cp -r $basedir $miseinpace

echo "Creating new root FS"
rm airootfs.sfs
mksquashfs squashfs-root airootfs.sfs
rm -r squashfs-root
md5sum airootfs.sfs > airootfs.md5

echo "Baking new ISO"
chdir($workdir)
iso_label = "ARCH_" + $year + $month
isofilename = $basedir + "/katcipis-" + $filename

chdir($workdir)

result <= (
    xorriso
            -as mkisofs
            -iso-level 3
            -full-iso9660-filenames
            -volid $iso_label
            -eltorito-boot "isolinux/isolinux.bin"
            -eltorito-catalog "isolinux/boot.cat"
            -no-emul-boot
            -boot-load-size 4
            -boot-info-table
            -isohybrid-mbr "isolinux/isohdpfx.bin"
            -eltorito-alt-boot
            -e "EFI/archiso/efiboot.img"
            -no-emul-boot
            -isohybrid-gpt-basdat
            -output $isofilename $workdir
)

echo "Done: "
