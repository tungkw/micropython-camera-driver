# Set location of base MicroPython directory.
if(NOT MICROPY_DIR)
    get_filename_component(MICROPY_DIR ${CMAKE_CURRENT_LIST_DIR}/../../../.. ABSOLUTE)
endif()

# Set location of the ESP32 port directory.
if(NOT MICROPY_PORT_DIR)
    get_filename_component(MICROPY_PORT_DIR ${MICROPY_DIR}/ports/esp32 ABSOLUTE)
endif()

set(SDKCONFIG_DEFAULTS
    boards/sdkconfig.base
    boards/ESP32_CAM/sdkconfig.esp32cam
)

if(NOT MICROPY_FROZEN_MANIFEST)
    set(MICROPY_FROZEN_MANIFEST ${MICROPY_PORT_DIR}/boards/manifest.py)
endif()