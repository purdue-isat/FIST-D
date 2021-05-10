#define STM8S003
/** The measurement rate ranges */
typedef enum {
  DPS310_1HZ,   ///< 1 Hz
  DPS310_2HZ,   ///< 2 Hz
  DPS310_4HZ,   ///< 4 Hz
  DPS310_8HZ,   ///< 8 Hz
  DPS310_16HZ,  ///< 16 Hz
  DPS310_32HZ,  ///< 32 Hz
  DPS310_64HZ,  ///< 64 Hz
  DPS310_128HZ ///< 128 Hz
} dps310_rate_t;

/** The  oversample rate ranges */
typedef enum {
  DPS310_1SAMPLE,    ///< 1 Hz
  DPS310_2SAMPLES,   ///< 2 Hz
  DPS310_4SAMPLES,   ///< 4 Hz
  DPS310_8SAMPLES,   ///< 8 Hz
  DPS310_16SAMPLES,  ///< 16 Hz
  DPS310_32SAMPLES,  ///< 32 Hz
  DPS310_64SAMPLES,  ///< 64 Hz
  DPS310_128SAMPLES ///< 128 Hz
} dps310_oversample_t;

/** The  oversample rate ranges */
typedef enum {
  DPS310_IDLE = 0b000,            ///< Stopped/idle
  DPS310_ONE_PRESSURE = 0b001,    ///< Take single pressure measurement
  DPS310_ONE_TEMPERATURE = 0b010, ///< Take single temperature measurement
  DPS310_CONT_PRESSURE = 0b101,   ///< Continuous pressure measurements
  DPS310_CONT_TEMP = 0b110,       ///< Continuous pressure measurements
  DPS310_CONT_PRESTEMP = 0b111   ///< Continuous temp+pressure measurements
} dps310_mode_t;

#define N_SENSORS 5
#define SAMPLE_RATE_TEMP  DPS310_64HZ
#define SAMPLE_RATE_PRESSURE DPS310_64HZ
#define OVERSAMPLE_TEMP DPS310_8SAMPLES
#define OVERSAMPLE_PRESSURE DPS310_8SAMPLES

#define DPS310_PRSB2 0x00       ///< Highest byte of pressure data
#define DPS310_PRSB1 0x01       ///< Highest byte of pressure 
#define DPS310_PRSB0 0x02       ///< Highest byte of pressure 
#define DPS310_TMPB2 0x03       ///< Highest byte of temperature data
#define DPS310_TMPB1 0x04       ///< Highest byte of temperature data

#define DPS310_TMPB0 0x05       ///< Highest byte of temperature data

#define DPS310_PRSCFG 0x06      ///< Pressure configuration
#define DPS310_TMPCFG 0x07      ///< Temperature configuration
#define DPS310_MEASCFG 0x08     ///< Sensor configuration
#define DPS310_CFGREG 0x09      ///< Interrupt/FIFO configuration
#define DPS310_RESET 0x0C       ///< Soft reset
#define DPS310_PRODREVID 0x0D   ///< Register that contains the part ID
#define DPS310_TMPCOEFSRCE 0x28 ///< Temperature calibration src

//C:\Users\YE\Documents\Arduino\libraries\Adafruit_DPS310\Adafruit_DPS310.cpp

# define BOARD_FIRST_ID (0xf0)
# define AUTOSTART_ID (0xe0)
//ID from 0xf0+0 to 0xf0 + 5
//# define BOARD_ID 0xf0
//# define BOARD_id 0xf8
# define BOARD_ID (0xf0+5)
# define BOARD_id (0xf8+5)