#!/usr/bin/env bash
# Copyright 2023 LiveKit, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


if ! command -v mage &> /dev/null
then
  go get -u -d github.com/magefile/mage
  cd $GOPATH/src/github.com/magefile/mage
  go run bootstrap.go
fi

if ! command -v mage &> /dev/null
then
  echo "Ensure `go env GOPATH`/bin is in your \$PATH"
  exit 1
fi

go mod download
