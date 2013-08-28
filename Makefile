
setup.exe: 7zS.sfx 7zS-config.txt pack.7z
	copy /b $(subst $(strip) ,+,$^) $@

# In order to replace ' ' to '+',
# there is a tricky way to produce a space character.

pack.7z: pack
	cd $< && 7za a ..\$@ *

pack: pack/setup.bat


clean:
	-del setup.exe pack.7z
