#!/sbin/sh

#
# (c)2013 dtrail
#
# The script should run through each line and if it found a line 
# that has the same text before the "=" it will remove that line 
# and then add the contents of misc to the bottom of the build.prop
# file. This way, even if the line is not present in the build.prop 
# it will still be added

# define a placeholder for build.prop
bp="/system/build.prop"

# Mount system and data
busybox mount /system
busybox mount /data


# Check for backup file, create it if not found
if [ -f /system/build.prop.bak ]; 
  then
    rm -rf $bp
    cp $bp.bak $bp
  else
    cp $bp $bp.bak
fi

# Add edited-line
echo " " >> $bp
echo "# dtrail - build.prop additions" >> $bp
echo " " >> $bp

# check build-prop for existing entries and replace/insert from misc script
for mod in misc;
  do
    for prop in `cat /tmp/$mod`;do
      export newprop=$(echo ${prop} | cut -d '=' -f1)
      sed -i "/${newprop}/d" /system/build.prop
      echo $prop >> /system/build.prop 
    done
done
