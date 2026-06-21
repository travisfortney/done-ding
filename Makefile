.PHONY: test demo smoke

test:
	bash -n bin/done-ding
	bash -n examples/long-task.sh
	bash -n tests/smoke.sh
	./tests/smoke.sh

smoke:
	./tests/smoke.sh

demo:
	./examples/long-task.sh
