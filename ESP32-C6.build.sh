# test-with-docker 
docker run -it --rm \
  -e BOARD=ESP32_GENERIC_C6 \
  -e UID=$(id -u) \
  -v $(pwd):/micropython \
  -v /sys/bus:/sys/bus \
  -v /dev:/dev \
  --privileged \
  --net=host \
  -w /micropython espressif/idf:v5.2.2 \
  bash -c '\
useradd -ms /bin/bash -g root -G sudo -u $UID esp;\
git config --global --add safe.directory /opt/esp/idf;\
su esp -m -c ". /opt/esp/entrypoint.sh; export HOME=/tmp; \
make -C mpy-cross && \
make -C ports/esp32 BOARD=$BOARD clean && \
make -C ports/esp32 BOARD=$BOARD submodules && \
make -C ports/esp32 BOARD=$BOARD && \
make -C ports/esp32 BOARD=$BOARD deploy PORT=/dev/ttyACM0 && \
( sleep 1; \
openocd -f board/esp32c6-builtin.cfg & \
sleep 1; \
cd tests && \
./run-tests.py --target esp32 --device /dev/ttyACM0 \
)"'
