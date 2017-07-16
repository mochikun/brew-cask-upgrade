#!/usr/local/bin/fish

for c in (brew cask list)
	set ver (brew cask info $c 2>/dev/null | head -n 1 | cut -d " " -f2)
	if [ ! -e /usr/local/Caskroom/$c/$ver ]
		brew cask install --force $c
	end
end
