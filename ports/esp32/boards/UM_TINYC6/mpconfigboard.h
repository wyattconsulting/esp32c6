// This configuration is for a generic ESP32C6 board with 8MiB (or more) of flash.

#define MICROPY_HW_BOARD_NAME    "Unexpected Maker TinyC6"
#define MICROPY_HW_MCU_NAME      "ESP32C6"

#define MICROPY_HW_ENABLE_SDCARD (0)
#define MICROPY_PY_MACHINE_DAC   (0)
#define MICROPY_PY_MACHINE_I2S   (0)

#define MICROPY_HW_I2C0_SCL      (7)
#define MICROPY_HW_I2C0_SDA      (6)

#define MICROPY_HW_SPI1_MOSI     (21)
#define MICROPY_HW_SPI1_MISO     (20)
#define MICROPY_HW_SPI1_SCK      (19)

// #define MICROPY_PY_BLUETOOTH (1)
// #define MICROPY_BLUETOOTH_NIMBLE (1)
// #define MICROPY_BLUETOOTH_NIMBLE_BINDINGS_ONLY (1)
