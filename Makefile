.PHONY: cover test update

update:
	git pull --tags origin master
	carton install
	carton exec bin/librecat generate forms
	carton exec bin/librecat generate departments
	./index.sh reindex
	echo "Update complete!"

cover:
	cover -t +select ^lib +ignore ^ -make 'prove -Ilib -j 2 -r t; exit $?'

test:
	prove -l -j 2 -r t
