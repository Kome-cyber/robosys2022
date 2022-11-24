#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Koumei Ainoya
# SPDX-License-Identifier: BSD-3-Clause
 ng (){
	 echo NG at Line $1
	 res=1
 }
 res=0

out=$(seq 5 | ./sisoku)
[ "${out}" = 15 , -15 , 120 , 0.008333333333333333 ] || ng ${LINENO}

out=$(echo あ | ./sisoku)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./sisoku)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
