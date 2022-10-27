#!/bin/bash
# SPDX-FileCopyrightText: 2022 Koumei Ainoya
# SPDX-License-Identifier: BSD-3-Clause

out=$(seq 5 | ./plus)

[ "${out}" = 15 ]


