#!/bin/bash
# SPDX-FileCopyrightText: 2022 Koumei Ainoya
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目 いず えら～
	ret=1
}

ret=0
a=山田
[ "$a" = ラプラス ] || ng "$LINENO"
[ "$a" = 山田 ] || ng "$LINENO"

exit $ret

