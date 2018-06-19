dnl $Id$
dnl config.m4 for extension kcp

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(kcp, for kcp support,
dnl Make sure that the comment is aligned:
dnl [  --with-kcp             Include kcp support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(kcp, whether to enable kcp support,
dnl Make sure that the comment is aligned:
dnl [  --enable-kcp           Enable kcp support])

if test "$PHP_KCP" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-kcp -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/kcp.h"  # you most likely want to change this
  dnl if test -r $PHP_KCP/$SEARCH_FOR; then # path given as parameter
  dnl   KCP_DIR=$PHP_KCP
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for kcp files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       KCP_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$KCP_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the kcp distribution])
  dnl fi

  dnl # --with-kcp -> add include path
  dnl PHP_ADD_INCLUDE($KCP_DIR/include)

  dnl # --with-kcp -> check for lib and symbol presence
  dnl LIBNAME=kcp # you may want to change this
  dnl LIBSYMBOL=kcp # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $KCP_DIR/$PHP_LIBDIR, KCP_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_KCPLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong kcp lib version or lib not found])
  dnl ],[
  dnl   -L$KCP_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(KCP_SHARED_LIBADD)

  PHP_NEW_EXTENSION(kcp, kcp.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
