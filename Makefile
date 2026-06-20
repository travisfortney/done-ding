.PHONY: test demo

test:
	bash -n bin/done-ding
	bash -n examples/long-task.sh

demo:
	./examples/long-task.sh
