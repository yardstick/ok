GO = go
LDFLAGS = -s
TARGET = ok
REPO = quay.io/assemblyline/ok

all: $(TARGET)

$(TARGET): export GOOS=linux
$(TARGET): export GOARCH=amd64
$(TARGET): $(TARGET).go
	go build -ldflags $(LDFLAGS) $(TARGET).go

build: $(TARGET)
	docker build -t $(REPO) .

release: build
	docker push $(REPO)

clean:
	$(RM) $(TARGET)
