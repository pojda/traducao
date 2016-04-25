echo
rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi; svn update doc-base
rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi; svn update en
rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi; git fetch upstream
rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi; git checkout master
rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi; git merge upstream/master -m "Upstream merge."
rc=$?; if [ $rc -ne 0 ]; then exit $rc; fi; php doc-base/configure.php --enable-xml-details --with-lang=pt_BR

