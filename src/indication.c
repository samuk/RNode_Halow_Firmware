#include "basic_include.h"
#include "indication.h"

#define INDICATION_LED_MAIN_PIN     PA_7

void indication_init(void){
    gpio_set_dir(INDICATION_LED_MAIN_PIN, GPIO_DIR_OUTPUT);
    gpio_set_val(INDICATION_LED_MAIN_PIN, 0);
}

void indication_led_main_set(bool state){
    gpio_set_val(PA_7, !state);
}
