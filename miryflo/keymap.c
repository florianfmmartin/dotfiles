#include QMK_KEYBOARD_H

#ifdef PROTOCOL_LUFA
  #include "lufa.h"
  #include "split_util.h"
#endif
#ifdef SSD1306OLED
  #include "ssd1306.h"
#endif

extern uint8_t is_master;

enum layer_number {
  _ALPH = 0,
  _FUNC = 1,
  _NUMB = 2,
  _NAVG = 3,
  _MDIA = 4,
  _MOUS = 5,
  _SYMB = 6,
};

// custom keymaps
#define MY_A LALT_T(KC_A)
#define MY_E LCTL_T(KC_E)
#define MY_I LSFT_T(KC_I)
#define MY_O LGUI_T(KC_O)
#define MY_U RALT_T(KC_U)

#define MY_S LALT_T(KC_S)
#define MY_N LCTL_T(KC_N)
#define MY_T LSFT_T(KC_T)
#define MY_R LGUI_T(KC_R)
#define MY_C RALT_T(KC_C)

#define MY_ESC LT(_FUNC, KC_ESC)
#define MY_TAB LT(_NUMB, KC_TAB)
#define MY_ENT LT(_NAVG, KC_ENT)

#define MY_DEL LT(_MDIA, KC_DEL)
#define MY_BSP LT(_MOUS, KC_BSPC)
#define MY_SPC LT(_SYMB, KC_SPC)

#define MY_COLN S(KC_SCLN)
#define MY_SCLN KC_SCLN
#define MY_LPRN S(KC_9)
#define MY_RPRN S(KC_0)
#define MY_LBRA ALGR(KC_QUOT)
#define MY_RBRA ALGR(KC_BSLS)
#define MY_LBRC ALGR(KC_LBRC)
#define MY_RBRC ALGR(KC_RBRC)
#define MY_LARR KC_BSLS
#define MY_RARR S(KC_BSLS)
#define MY_BSLH ALGR(KC_GRV)
#define MY_PIPE S(KC_GRV)
#define MY_TILD ALGR(KC_SCLN)
#define MY_HASH KC_GRV
#define MY_CEDL KC_RBRC
#define MY_CIRC KC_LBRC

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
 [_ALPH] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                  XXXXXXX, XXXXXXX,  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, KC_J,    KC_H,    MY_O,    MY_U,    KC_Y,                     KC_V,    MY_C,     MY_R,    KC_F,    KC_Z,    XXXXXXX, \
  XXXXXXX, KC_Q,    MY_A,    MY_E,    MY_I,    KC_G,                     KC_D,    MY_T,     MY_N,    MY_S,    KC_K,    XXXXXXX, \
  XXXXXXX, KC_X,    KC_SLSH, KC_COMM, KC_QUOT, KC_DOT, XXXXXXX, XXXXXXX, KC_W,    KC_M,     KC_L,    KC_P,    KC_B,    XXXXXXX, \
                             XXXXXXX, MY_ESC,  MY_TAB,  MY_ENT, MY_SPC,  MY_BSP,   MY_DEL, XXXXXXX \
),

 [_FUNC] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______,                   KC_F12 , KC_F7  , KC_F8  , KC_F9  , _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______,                   KC_F11 , KC_F4  , KC_F5  , KC_F6  , _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______, XXXXXXX, XXXXXXX, KC_F10 , KC_F1  , KC_F2  , KC_F3  , _______, XXXXXXX, \
                             XXXXXXX, _______, _______, _______, KC_APP , _______, _______, XXXXXXX \
),

 [_NUMB] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______,                   _______, KC_7   , KC_8   , KC_9   , _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______,                   KC_MINS, KC_4   , KC_5   , KC_6   , _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______, XXXXXXX, XXXXXXX, KC_EQL , KC_1   , KC_2   , KC_3   , _______, XXXXXXX, \
                             XXXXXXX, _______, _______, _______, KC_0   , _______, _______, XXXXXXX \
),

 [_NAVG] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______,                   KC_PGUP, KC_HOME, KC_UP  , KC_END , _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______,                   KC_PGDN, KC_LEFT, KC_DOWN, KC_RGHT, _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______, XXXXXXX, XXXXXXX, _______, KC_CAPS, _______, _______, _______, XXXXXXX, \
                             XXXXXXX, _______, _______, _______, _______, KC_BSPC, _______, XXXXXXX \
),

 [_MDIA] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, _______, _______, KC_VOLU, _______, _______,                   _______, _______, _______, _______, _______, XXXXXXX, \
  XXXXXXX, _______, KC_MPRV, KC_VOLD, KC_MNXT, _______,                   _______, _______, _______, _______, _______, XXXXXXX, \
  XXXXXXX, _______, _______, KC_MUTE, _______, _______, XXXXXXX, XXXXXXX, _______, _______, _______, _______, _______, XXXXXXX, \
                             XXXXXXX, _______, _______, _______, _______, _______, _______, XXXXXXX \
),

 [_MOUS] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, _______, KC_WH_L, KC_MS_U, KC_WH_R, KC_WH_U,                   _______, _______, _______, _______, _______, XXXXXXX, \
  XXXXXXX, _______, KC_MS_L, KC_MS_D, KC_MS_R, KC_WH_D,                   _______, _______, _______, _______, _______, XXXXXXX, \
  XXXXXXX, _______, _______, _______, _______, _______, XXXXXXX, XXXXXXX, _______, _______, _______, _______, _______, XXXXXXX, \
                             XXXXXXX, KC_BTN2, KC_BTN3, KC_BTN1, _______, _______, _______, XXXXXXX \
),

 [_SYMB] = LAYOUT( \
  XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX,                   XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, XXXXXXX, \
  XXXXXXX, MY_COLN, MY_RPRN, MY_RBRA, MY_RBRC, MY_RARR,                   _______,    S(KC_7), S(KC_8), S(KC_9), _______, XXXXXXX, \
  XXXXXXX, MY_SCLN, MY_LPRN, MY_LBRA, MY_LBRC, MY_LARR,                   S(KC_MINS), S(KC_4), S(KC_5), S(KC_6), _______, XXXXXXX, \
  XXXXXXX, MY_HASH, MY_BSLH, MY_PIPE, MY_TILD, S(KC_2), XXXXXXX, XXXXXXX, S(KC_EQL) , S(KC_1), ALGR(KC_2), S(KC_3), _______, XXXXXXX, \
                             XXXXXXX, _______, MY_CEDL, MY_CIRC, _______,    _______, _______, XXXXXXX \
)
};

//SSD1306 OLED update loop, make sure to enable OLED_DRIVER_ENABLE=yes in rules.mk
#ifdef OLED_DRIVER_ENABLE

oled_rotation_t oled_init_user(oled_rotation_t rotation) {
  if (is_keyboard_master())
    return OLED_ROTATION_180;  // flips the display 180 degrees if offhand
  return rotation;
}

// When you add source files to SRC in rules.mk, you can use functions.
const char *read_layer_state(void);
const char *read_logo(void);
void set_keylog(uint16_t keycode, keyrecord_t *record);
const char *read_keylog(void);
const char *read_keylogs(void);

void oled_task_user(void) {
  if (is_keyboard_master()) {
    oled_write_ln(read_layer_state(), false);
    oled_write_ln(read_keylog(), false);
    /* oled_write_ln(read_keylogs(), false); */
  } else {
    oled_write(read_logo(), false);
  }
}
#endif // OLED_DRIVER_ENABLE

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
#ifdef OLED_DRIVER_ENABLE
    set_keylog(keycode, record);
#endif
  }
  return true;
}
