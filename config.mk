project_name = akkaapitemplate
project_dir = $(shell pwd)
docs_dir = docs

user = $(shell id -u $(USER))
group = $(shell id -g $(USER))

protoc_cmd = docker run \
	     -v $(project_dir):/$(project_name) \
	     -w /$(project_name) \
	     --rm brennovich/protobuf-tools:latest
