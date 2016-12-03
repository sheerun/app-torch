OWNER:=jarvice
NAME:=app-torch

image:
	docker build -t $(OWNER)/$(NAME) .

test:
	/bin/bash tests/test_torch.sh $(OWNER)/$(NAME)

push:
	docker push $(OWNER)/$(NAME)
