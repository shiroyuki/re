TEST_PATHS=.
CURR_PATH=`pwd`
GOPATH_DEPS=${CURR_PATH}/lib
GOPATH_LINK=${GOPATH_DEPS}:${CURR_PATH}
GO_GET=GOPATH=${GOPATH_DEPS} go get
GO_DOC=GOPATH=${GOPATH_LINK} godoc
GO_TEST=GOPATH=${GOPATH_LINK} go test
GO_MAIN=server.go

test: install_deps
	${GO_TEST} ${TEST_PATHS}
	@echo "Done"

install_deps:
	@echo "Installing dependencies..."
	@mkdir -p ${GOPATH_DEPS}
	@${GO_GET} github.com/shiroyuki/tameshigiri

doc_web: install_deps
	${GO_DOC} -http=:6060
