.class public Lio/dcloud/common/util/ExifInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;,
        Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;,
        Lio/dcloud/common/util/ExifInterface$IfdType;,
        Lio/dcloud/common/util/ExifInterface$ExifTag;,
        Lio/dcloud/common/util/ExifInterface$ExifAttribute;,
        Lio/dcloud/common/util/ExifInterface$Rational;,
        Lio/dcloud/common/util/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_VALUE_STRING_LENGTH:I = 0x13

.field private static final DEBUG:Z

.field static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field private static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field static final IFD_TYPE_PREVIEW:I = 0x5

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_PNG:I = 0xd

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final IMAGE_TYPE_WEBP:I = 0xe

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_EXIF:[B

.field private static final PNG_CHUNK_TYPE_IEND:[B

.field private static final PNG_CHUNK_TYPE_IHDR:[B

.field private static final PNG_SIGNATURE:[B

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field static final START_CODE:B = 0x2at

.field public static final STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_CAMERA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Lio/dcloud/common/util/ExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final WEBP_VP8_SIGNATURE:[B

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lio/dcloud/common/util/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatterPrimary:Ljava/text/SimpleDateFormat;

.field private static sFormatterSecondary:Ljava/text/SimpleDateFormat;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/util/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mAttributesOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOffsetToExifData:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpIsFromSeparateMarker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 30

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    .line 2160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x1

    .line 2159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v7, 0x6

    .line 2160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v8, 0x2

    .line 2164
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v2, v3, v8

    const/16 v10, 0x8

    .line 2160
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v1

    .line 2161
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    new-array v3, v0, [Ljava/lang/Integer;

    aput-object v9, v3, v6

    const/4 v12, 0x7

    .line 2164
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v8

    const/4 v14, 0x5

    .line 2165
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v3, v1

    .line 2166
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    new-array v3, v1, [I

    .line 2809
    fill-array-data v3, :array_0

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    new-array v3, v4, [I

    aput v0, v3, v6

    .line 2814
    sput-object v3, Lio/dcloud/common/util/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    new-array v3, v4, [I

    aput v10, v3, v6

    .line 2819
    sput-object v3, Lio/dcloud/common/util/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    new-array v3, v1, [B

    .line 2869
    fill-array-data v3, :array_1

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->JPEG_SIGNATURE:[B

    new-array v3, v0, [B

    .line 2873
    fill-array-data v3, :array_2

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->HEIF_TYPE_FTYP:[B

    new-array v3, v0, [B

    .line 2874
    fill-array-data v3, :array_3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->HEIF_BRAND_MIF1:[B

    new-array v3, v0, [B

    .line 2875
    fill-array-data v3, :array_4

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->HEIF_BRAND_HEIC:[B

    new-array v3, v7, [B

    .line 2883
    fill-array-data v3, :array_5

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v12, v3, [B

    .line 2885
    fill-array-data v12, :array_6

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    new-array v12, v10, [B

    .line 2901
    fill-array-data v12, :array_7

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->PNG_SIGNATURE:[B

    new-array v12, v0, [B

    .line 2905
    fill-array-data v12, :array_8

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    new-array v12, v0, [B

    .line 2907
    fill-array-data v12, :array_9

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    new-array v12, v0, [B

    .line 2909
    fill-array-data v12, :array_a

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    new-array v12, v0, [B

    .line 2915
    fill-array-data v12, :array_b

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_1:[B

    new-array v12, v0, [B

    .line 2916
    fill-array-data v12, :array_c

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_2:[B

    new-array v12, v0, [B

    .line 2918
    fill-array-data v12, :array_d

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    new-array v12, v1, [B

    .line 2920
    fill-array-data v12, :array_e

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 2923
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    const-string v3, "VP8X"

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    .line 2924
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8L"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 2925
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "VP8 "

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    .line 2926
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANIM"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    .line 2927
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v12, "ANMF"

    invoke-virtual {v12, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    const-string v16, ""

    const-string v17, "BYTE"

    const-string v18, "STRING"

    const-string v19, "USHORT"

    const-string v20, "ULONG"

    const-string v21, "URATIONAL"

    const-string v22, "SBYTE"

    const-string v23, "UNDEFINED"

    const-string v24, "SSHORT"

    const-string v25, "SLONG"

    const-string v26, "SRATIONAL"

    const-string v27, "SINGLE"

    const-string v28, "DOUBLE"

    const-string v29, "IFD"

    .line 2964
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v3, 0xe

    new-array v12, v3, [I

    .line 2969
    fill-array-data v12, :array_f

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    new-array v12, v10, [B

    .line 2974
    fill-array-data v12, :array_10

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->EXIF_ASCII_PREFIX:[B

    const/16 v12, 0x2a

    new-array v12, v12, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3429
    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v7, 0xfe

    invoke-direct {v3, v10, v7, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v3, v7, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v4

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "ImageWidth"

    const/16 v10, 0x100

    invoke-direct {v3, v7, v10, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v8

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "ImageLength"

    const/16 v10, 0x101

    invoke-direct {v3, v7, v10, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v3, v12, v1

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v3, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v0

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "Compression"

    const/16 v10, 0x103

    invoke-direct {v3, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v3, v12, v14

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "PhotometricInterpretation"

    const/16 v10, 0x106

    invoke-direct {v3, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "ImageDescription"

    const/16 v10, 0x10e

    invoke-direct {v3, v7, v10, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x7

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "Make"

    const/16 v10, 0x10f

    invoke-direct {v3, v7, v10, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x8

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "Model"

    const/16 v10, 0x110

    invoke-direct {v3, v7, v10, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x9

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "StripOffsets"

    const/16 v7, 0x111

    invoke-direct {v3, v10, v7, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xa

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "Orientation"

    const/16 v10, 0x112

    invoke-direct {v3, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xb

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "SamplesPerPixel"

    const/16 v7, 0x115

    invoke-direct {v3, v10, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xc

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "RowsPerStrip"

    const/16 v7, 0x116

    invoke-direct {v3, v10, v7, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xd

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "StripByteCounts"

    const/16 v7, 0x117

    invoke-direct {v3, v10, v7, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v7, 0xe

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "XResolution"

    const/16 v10, 0x11a

    invoke-direct {v3, v7, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0xf

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "YResolution"

    const/16 v7, 0x11b

    invoke-direct {v3, v10, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x10

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "PlanarConfiguration"

    const/16 v7, 0x11c

    invoke-direct {v3, v10, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x11

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "ResolutionUnit"

    const/16 v7, 0x128

    invoke-direct {v3, v10, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x12

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "TransferFunction"

    const/16 v7, 0x12d

    invoke-direct {v3, v10, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x13

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "Software"

    const/16 v7, 0x131

    invoke-direct {v3, v10, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x14

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "DateTime"

    const/16 v7, 0x132

    invoke-direct {v3, v10, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x15

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "Artist"

    const/16 v10, 0x13b

    invoke-direct {v3, v7, v10, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x16

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "WhitePoint"

    const/16 v10, 0x13e

    invoke-direct {v3, v7, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v7, 0x17

    aput-object v3, v12, v7

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "PrimaryChromaticities"

    const/16 v6, 0x13f

    invoke-direct {v3, v10, v6, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v10, 0x14a

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v10, 0x211

    invoke-direct {v3, v6, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v10, 0x212

    invoke-direct {v3, v6, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "YCbCrPositioning"

    const/16 v10, 0x213

    invoke-direct {v3, v6, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ReferenceBlackWhite"

    const/16 v10, 0x214

    invoke-direct {v3, v6, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v10, 0x8298

    invoke-direct {v3, v6, v10, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v10, 0x8769

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v10, 0x8825

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SensorTopBorder"

    invoke-direct {v3, v6, v0, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SensorLeftBorder"

    invoke-direct {v3, v6, v14, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SensorBottomBorder"

    const/4 v10, 0x6

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SensorRightBorder"

    const/4 v10, 0x7

    invoke-direct {v3, v6, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x26

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ISO"

    invoke-direct {v3, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x27

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "JpgFromRaw"

    const/16 v7, 0x2e

    invoke-direct {v3, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v3, v12, v6

    new-instance v3, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Xmp"

    const/16 v7, 0x2bc

    invoke-direct {v3, v6, v7, v4}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v3, v12, v6

    sput-object v12, Lio/dcloud/common/util/ExifInterface;->IFD_TIFF_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/16 v3, 0x4a

    new-array v3, v3, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3479
    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "ExposureTime"

    const v10, 0x829a

    invoke-direct {v6, v7, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "FNumber"

    const v10, 0x829d

    invoke-direct {v6, v7, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "ExposureProgram"

    const v10, 0x8822

    invoke-direct {v6, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v8

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "SpectralSensitivity"

    const v10, 0x8824

    invoke-direct {v6, v7, v10, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v1

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "PhotographicSensitivity"

    const v10, 0x8827

    invoke-direct {v6, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v0

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "OECF"

    const v10, 0x8828

    const/4 v4, 0x7

    invoke-direct {v6, v7, v10, v4}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v14

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "SensitivityType"

    const v10, 0x8830

    invoke-direct {v6, v7, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "StandardOutputSensitivity"

    const v10, 0x8831

    invoke-direct {v6, v7, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v3, v4

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "RecommendedExposureIndex"

    const v7, 0x8832

    invoke-direct {v4, v6, v7, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ISOSpeed"

    const v7, 0x8833

    invoke-direct {v4, v6, v7, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudeyyy"

    const v7, 0x8834

    invoke-direct {v4, v6, v7, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedLatitudezzz"

    const v7, 0x8835

    invoke-direct {v4, v6, v7, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ExifVersion"

    const v7, 0x9000

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "DateTimeOriginal"

    const v7, 0x9003

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "DateTimeDigitized"

    const v7, 0x9004

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "OffsetTime"

    const v7, 0x9010

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "OffsetTimeOriginal"

    const v7, 0x9011

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "OffsetTimeDigitized"

    const v7, 0x9012

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ComponentsConfiguration"

    const v7, 0x9101

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "CompressedBitsPerPixel"

    const v7, 0x9102

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ShutterSpeedValue"

    const v7, 0x9201

    const/16 v10, 0xa

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ApertureValue"

    const v7, 0x9202

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "BrightnessValue"

    const v7, 0x9203

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ExposureBiasValue"

    const v7, 0x9204

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x17

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "MaxApertureValue"

    const v7, 0x9205

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubjectDistance"

    const v7, 0x9206

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "MeteringMode"

    const v7, 0x9207

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "LightSource"

    const v7, 0x9208

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Flash"

    const v7, 0x9209

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FocalLength"

    const v7, 0x920a

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubjectArea"

    const v7, 0x9214

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "MakerNote"

    const v7, 0x927c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "UserComment"

    const v7, 0x9286

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x20

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubSecTime"

    const v7, 0x9290

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x21

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeOriginal"

    const v7, 0x9291

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x22

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeDigitized"

    const v7, 0x9292

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x23

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FlashpixVersion"

    const v7, 0xa000

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x24

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const v7, 0xa001

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x25

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "PixelXDimension"

    const v7, 0xa002

    invoke-direct {v4, v6, v7, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x26

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "PixelYDimension"

    const v7, 0xa003

    invoke-direct {v4, v6, v7, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x27

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "RelatedSoundFile"

    const v7, 0xa004

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x28

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v7, 0xa005

    invoke-direct {v4, v6, v7, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x29

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FlashEnergy"

    const v7, 0xa20b

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2a

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SpatialFrequencyResponse"

    const v7, 0xa20c

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2b

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneXResolution"

    const v7, 0xa20e

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2c

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneYResolution"

    const v7, 0xa20f

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2d

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneResolutionUnit"

    const v7, 0xa210

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2e

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubjectLocation"

    const v7, 0xa214

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x2f

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ExposureIndex"

    const v7, 0xa215

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x30

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SensingMethod"

    const v7, 0xa217

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x31

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FileSource"

    const v7, 0xa300

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x32

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SceneType"

    const v7, 0xa301

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x33

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "CFAPattern"

    const v7, 0xa302

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x34

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "CustomRendered"

    const v7, 0xa401

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x35

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ExposureMode"

    const v7, 0xa402

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x36

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "WhiteBalance"

    const v7, 0xa403

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x37

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "DigitalZoomRatio"

    const v7, 0xa404

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x38

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "FocalLengthIn35mmFilm"

    const v7, 0xa405

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x39

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SceneCaptureType"

    const v7, 0xa406

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3a

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GainControl"

    const v7, 0xa407

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3b

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Contrast"

    const v7, 0xa408

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3c

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Saturation"

    const v7, 0xa409

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3d

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Sharpness"

    const v7, 0xa40a

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3e

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "DeviceSettingDescription"

    const v7, 0xa40b

    const/4 v10, 0x7

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x3f

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "SubjectDistanceRange"

    const v7, 0xa40c

    invoke-direct {v4, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x40

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "ImageUniqueID"

    const v7, 0xa420

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x41

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "CameraOwnerName"

    const v7, 0xa430

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x42

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "BodySerialNumber"

    const v7, 0xa431

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x43

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "LensSpecification"

    const v7, 0xa432

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x44

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "LensMake"

    const v7, 0xa433

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x45

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "LensModel"

    const v7, 0xa434

    invoke-direct {v4, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x46

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "Gamma"

    const v7, 0xa500

    invoke-direct {v4, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x47

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v7, 0xc612

    const/4 v10, 0x1

    invoke-direct {v4, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x48

    aput-object v4, v3, v6

    new-instance v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "DefaultCropSize"

    const v7, 0xc620

    invoke-direct {v4, v6, v7, v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v6, 0x49

    aput-object v4, v3, v6

    sput-object v3, Lio/dcloud/common/util/ExifInterface;->IFD_EXIF_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/16 v4, 0x20

    new-array v4, v4, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3557
    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "GPSVersionID"

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v0}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v10

    new-instance v6, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v7, "GPSLatitudeRef"

    invoke-direct {v6, v7, v0, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v6, v4, v0

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSLatitude"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v8, v14, v7}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v4, v8

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v0, v6, v1, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSLongitude"

    const/4 v10, 0x4

    invoke-direct {v0, v6, v10, v14, v7}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v4, v10

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSAltitudeRef"

    const/4 v7, 0x1

    invoke-direct {v0, v6, v14, v7}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v14

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSAltitude"

    const/4 v7, 0x6

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSTimeStamp"

    const/4 v7, 0x7

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSSatellites"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSStatus"

    const/16 v7, 0x9

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSMeasureMode"

    const/16 v7, 0xa

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDOP"

    const/16 v7, 0xb

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSSpeedRef"

    const/16 v7, 0xc

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSSpeed"

    const/16 v7, 0xd

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSTrackRef"

    const/16 v7, 0xe

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSTrack"

    const/16 v7, 0xf

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirectionRef"

    const/16 v7, 0x10

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirection"

    const/16 v7, 0x11

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSMapDatum"

    const/16 v7, 0x12

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v7, 0x13

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitude"

    const/16 v7, 0x14

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v7, 0x15

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x15

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitude"

    const/16 v7, 0x16

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x16

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearingRef"

    const/16 v7, 0x17

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v4, v7

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearing"

    const/16 v7, 0x18

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x18

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistanceRef"

    const/16 v7, 0x19

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x19

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistance"

    const/16 v7, 0x1a

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1a

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSProcessingMethod"

    const/16 v7, 0x1b

    const/4 v10, 0x7

    invoke-direct {v0, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1b

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSAreaInformation"

    const/16 v7, 0x1c

    invoke-direct {v0, v6, v7, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1c

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDateStamp"

    const/16 v7, 0x1d

    invoke-direct {v0, v6, v7, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1d

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSDifferential"

    const/16 v7, 0x1e

    invoke-direct {v0, v6, v7, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1e

    aput-object v0, v4, v6

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v6, "GPSHPositioningError"

    const/16 v7, 0x1f

    invoke-direct {v0, v6, v7, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x1f

    aput-object v0, v4, v6

    sput-object v4, Lio/dcloud/common/util/ExifInterface;->IFD_GPS_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/4 v0, 0x1

    new-array v6, v0, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3594
    new-instance v7, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "InteroperabilityIndex"

    invoke-direct {v7, v10, v0, v8}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object v7, v6, v0

    sput-object v6, Lio/dcloud/common/util/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/16 v7, 0x25

    new-array v7, v7, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3598
    new-instance v10, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v14, "NewSubfileType"

    const/16 v8, 0xfe

    const/4 v1, 0x4

    invoke-direct {v10, v14, v8, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v10, v7, v0

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "SubfileType"

    const/16 v10, 0xff

    invoke-direct {v0, v8, v10, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v0, v7, v8

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageWidth"

    const/16 v10, 0x100

    const/4 v14, 0x3

    invoke-direct {v0, v8, v10, v14, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/4 v8, 0x2

    aput-object v0, v7, v8

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImageLength"

    const/16 v10, 0x101

    invoke-direct {v0, v8, v10, v14, v1}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    aput-object v0, v7, v14

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "BitsPerSample"

    const/16 v10, 0x102

    invoke-direct {v0, v8, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "Compression"

    const/16 v8, 0x103

    invoke-direct {v0, v1, v8, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "PhotometricInterpretation"

    const/16 v8, 0x106

    invoke-direct {v0, v1, v8, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "ImageDescription"

    const/16 v8, 0x10e

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "Make"

    const/16 v8, 0x10f

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "Model"

    const/16 v8, 0x110

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "ThumbnailOrientation"

    const/16 v8, 0x112

    invoke-direct {v0, v1, v8, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "SamplesPerPixel"

    const/16 v8, 0x115

    invoke-direct {v0, v1, v8, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "RowsPerStrip"

    const/16 v8, 0x116

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v14, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "StripByteCounts"

    const/16 v8, 0x117

    invoke-direct {v0, v1, v8, v14, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "XResolution"

    const/16 v8, 0x11a

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "YResolution"

    const/16 v8, 0x11b

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "PlanarConfiguration"

    const/16 v8, 0x11c

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "ResolutionUnit"

    const/16 v8, 0x128

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x12

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "TransferFunction"

    const/16 v8, 0x12d

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x13

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "Software"

    const/16 v8, 0x131

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "DateTime"

    const/16 v8, 0x132

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x15

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "Artist"

    const/16 v8, 0x13b

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "WhitePoint"

    const/16 v8, 0x13e

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x17

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "PrimaryChromaticities"

    const/16 v8, 0x13f

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "SubIFDPointer"

    const/16 v8, 0x14a

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x19

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v8, 0x201

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v8, 0x202

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "YCbCrCoefficients"

    const/16 v8, 0x211

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "YCbCrSubSampling"

    const/16 v8, 0x212

    const/4 v10, 0x3

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1d

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "YCbCrPositioning"

    const/16 v8, 0x213

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1e

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "ReferenceBlackWhite"

    const/16 v8, 0x214

    const/4 v10, 0x5

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1f

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "Copyright"

    const v8, 0x8298

    const/4 v10, 0x2

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x20

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "ExifIFDPointer"

    const v8, 0x8769

    const/4 v10, 0x4

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x21

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "GPSInfoIFDPointer"

    const v8, 0x8825

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x22

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "DNGVersion"

    const v8, 0xc612

    const/4 v10, 0x1

    invoke-direct {v0, v1, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x23

    aput-object v0, v7, v1

    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "DefaultCropSize"

    const v8, 0xc620

    const/4 v10, 0x4

    const/4 v14, 0x3

    invoke-direct {v0, v1, v8, v14, v10}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    const/16 v1, 0x24

    aput-object v0, v7, v1

    sput-object v7, Lio/dcloud/common/util/ExifInterface;->IFD_THUMBNAIL_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3641
    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "StripOffsets"

    const/16 v8, 0x111

    invoke-direct {v0, v1, v8, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->TAG_RAF_IMAGE_SIZE:Lio/dcloud/common/util/ExifInterface$ExifTag;

    new-array v0, v14, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3645
    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "ThumbnailImage"

    const/16 v10, 0x100

    const/4 v14, 0x7

    invoke-direct {v1, v8, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x0

    aput-object v1, v0, v8

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "CameraSettingsIFDPointer"

    const/16 v10, 0x2020

    const/4 v14, 0x4

    invoke-direct {v1, v8, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v8, "ImageProcessingIFDPointer"

    const/16 v10, 0x2040

    invoke-direct {v1, v8, v10, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v8, 0x2

    aput-object v1, v0, v8

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    new-array v1, v8, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3650
    new-instance v8, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "PreviewImageStart"

    move-object/from16 v16, v11

    const/16 v11, 0x101

    invoke-direct {v8, v10, v11, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v8, v1, v10

    new-instance v8, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "PreviewImageLength"

    const/16 v11, 0x102

    invoke-direct {v8, v10, v11, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x1

    aput-object v8, v1, v10

    sput-object v1, Lio/dcloud/common/util/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    new-array v8, v10, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3654
    new-instance v11, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v14, "AspectFrame"

    const/16 v10, 0x1113

    move-object/from16 v20, v13

    const/4 v13, 0x3

    invoke-direct {v11, v14, v10, v13}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v10, 0x0

    aput-object v11, v8, v10

    sput-object v8, Lio/dcloud/common/util/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/4 v11, 0x1

    new-array v14, v11, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3658
    new-instance v11, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v10, "ColorSpace"

    move-object/from16 v21, v2

    const/16 v2, 0x37

    invoke-direct {v11, v10, v2, v13}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v11, v14, v2

    sput-object v14, Lio/dcloud/common/util/ExifInterface;->PEF_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/16 v10, 0xa

    new-array v11, v10, [[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aput-object v12, v11, v2

    const/4 v2, 0x1

    aput-object v3, v11, v2

    const/4 v2, 0x2

    aput-object v4, v11, v2

    aput-object v6, v11, v13

    const/4 v2, 0x4

    aput-object v7, v11, v2

    const/4 v3, 0x5

    aput-object v12, v11, v3

    const/4 v3, 0x6

    aput-object v0, v11, v3

    const/4 v0, 0x7

    aput-object v1, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v14, v11, v0

    .line 3682
    sput-object v11, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    new-array v0, v3, [Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3688
    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    invoke-direct {v1, v3, v4, v2}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v1, v3, v4, v2}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v1, v3, v4, v2}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v1, v3, v4, v2}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v2

    new-instance v1, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v1, v3, v4, v6}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3698
    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v0, v1, v3, v2}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 3700
    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifTag;

    const-string v1, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v0, v1, v3, v2}, Lio/dcloud/common/util/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/16 v0, 0xa

    new-array v1, v0, [Ljava/util/HashMap;

    .line 3705
    sput-object v1, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-array v0, v0, [Ljava/util/HashMap;

    .line 3709
    sput-object v0, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3711
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "FNumber"

    const-string v2, "DigitalZoomRatio"

    const-string v3, "ExposureTime"

    const-string v4, "SubjectDistance"

    const-string v6, "GPSTimeStamp"

    filled-new-array {v1, v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    .line 3723
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 3725
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3728
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    .line 3770
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    .line 3771
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3772
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    .line 3773
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v7, 0x0

    .line 3776
    :goto_0
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    .line 3777
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 3778
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v1, v7

    .line 3779
    aget-object v0, v0, v7

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3780
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget v6, v3, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3781
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v4, v4, v7

    iget-object v6, v3, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3786
    :cond_1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 3787
    aget-object v2, v1, v2

    iget v2, v2, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 3788
    aget-object v2, v1, v2

    iget v2, v2, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 3789
    aget-object v2, v1, v2

    iget v2, v2, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 3790
    aget-object v2, v1, v2

    iget v2, v2, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 3791
    aget-object v1, v1, v2

    iget v1, v1, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 3822
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3825
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3828
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3831
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_3
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_5
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_8
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_9
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_a
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_b
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_d
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_e
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_10
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "file cannot be null"

    .line 50
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 119
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 120
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "fileDescriptor cannot be null"

    .line 227
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 197
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x0

    .line 200
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-static {p1}, Lio/dcloud/common/util/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iput-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 206
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to duplicate file descriptor"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 212
    :cond_0
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 216
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    :try_start_2
    invoke-direct {p0, v2}, Lio/dcloud/common/util/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_1

    .line 221
    invoke-static {p1}, Lio/dcloud/common/util/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 222
    :goto_1
    invoke-static {v0}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_2

    .line 224
    invoke-static {p1}, Lio/dcloud/common/util/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 226
    :cond_2
    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 232
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 233
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "inputStream cannot be null"

    .line 395
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 373
    new-instance p2, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {p2, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 374
    invoke-static {p2}, Lio/dcloud/common/util/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ExifInterface"

    const-string p2, "Given data does not follow the structure of an Exif-only data."

    .line 375
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_1
    iput-boolean v1, p0, Lio/dcloud/common/util/ExifInterface;->mIsExifDataOnly:Z

    .line 379
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 380
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    move-object p1, p2

    goto :goto_1

    .line 382
    :cond_2
    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_3

    .line 383
    move-object p2, p1

    check-cast p2, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 384
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 385
    :cond_3
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ljava/io/FileInputStream;

    .line 386
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 388
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_1

    .line 390
    :cond_4
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 391
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 394
    :goto_1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    .line 55
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const-string v0, "filename cannot be null"

    .line 115
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 6

    const-string v0, "DateTimeOriginal"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    .line 2
    invoke-virtual {p0, v2}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    .line 4
    invoke-static {v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 5
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ImageWidth"

    .line 10
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 12
    invoke-static {v3, v4, v5}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 13
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "ImageLength"

    .line 16
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 17
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 18
    invoke-static {v3, v4, v5}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 19
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "Orientation"

    .line 22
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 23
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 24
    invoke-static {v3, v4, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "LightSource"

    .line 28
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 29
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 30
    invoke-static {v3, v4, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 31
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ExifInterface"

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Error closing fd."

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "closeFileDescriptor is called in API < 21, which must be wrong."

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 8

    double-to-long v0, p1

    long-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double v4, p1, v2

    double-to-long v4, v4

    long-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    sub-double/2addr p1, v6

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double p1, p1, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double p1, p1, v2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/10000000"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 11

    const-string v0, "/"

    :try_start_0
    const-string v1, ","

    const/4 v2, -0x1

    .line 1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 4
    aget-object v3, p0, v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 5
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v3, v3, v6

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 8
    aget-object v3, p0, v6

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 9
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v3, v3, v6

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    const/4 v3, 0x2

    .line 12
    aget-object p0, p0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 13
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v6

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v7, v2

    add-double/2addr v4, v7

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    add-double/2addr v4, v0

    const-string p0, "S"

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "N"

    .line 19
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "E"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-wide v4

    :cond_3
    :goto_1
    neg-double p0, v4

    return-wide p0

    .line 27
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 1
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, [I

    .line 3
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 8
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 9
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 5
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :goto_0
    if-lez p2, :cond_1

    .line 8
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v2, :cond_0

    sub-int/2addr p2, v4

    .line 15
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to copy the given amount of bytes from the inputstream to the output stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private copyChunksUpToGivenChunkType(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/util/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_0

    .line 5
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lio/dcloud/common/util/ExifInterface;->copyWebPChunk(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;[B)V

    .line 9
    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    .line 10
    invoke-static {v1, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    return-void
.end method

.method private copyWebPChunk(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 2
    invoke-virtual {p2, p3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3
    invoke-virtual {p2, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 5
    rem-int/lit8 p3, v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p1, p2, v0}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const-string v0, "tag shouldn\'t be null"

    .line 12
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ISOSpeedRatings"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ExifInterface"

    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p1, "PhotographicSensitivity"

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 11
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHeifAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "yes"

    .line 1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 4
    new-instance v2, Lio/dcloud/common/util/ExifInterface$1;

    invoke-direct {v2, p0, p1}, Lio/dcloud/common/util/ExifInterface$1;-><init>(Lio/dcloud/common/util/ExifInterface;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 60
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x21

    .line 66
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    .line 68
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a

    .line 70
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    .line 72
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    const/16 v0, 0x1d

    .line 83
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x1e

    .line 85
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f

    .line 87
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v6, v5

    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    .line 90
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x13

    .line 92
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    .line 94
    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :goto_2
    move-object v12, v6

    move-object v6, v0

    move-object v0, v12

    goto :goto_3

    :cond_3
    move-object v0, v6

    move-object v4, v0

    :goto_3
    const/4 v5, 0x0

    if-eqz v6, :cond_4

    .line 99
    iget-object v7, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "ImageWidth"

    .line 100
    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 101
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v4, :cond_5

    .line 106
    iget-object v7, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "ImageLength"

    .line 107
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 108
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v7, 0x6

    if-eqz v0, :cond_9

    const/4 v8, 0x1

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_8

    const/16 v10, 0xb4

    if-eq v9, v10, :cond_7

    const/16 v10, 0x10e

    if-eq v9, v10, :cond_6

    goto :goto_4

    :cond_6
    const/16 v8, 0x8

    goto :goto_4

    :cond_7
    const/4 v8, 0x3

    goto :goto_4

    :cond_8
    const/4 v8, 0x6

    .line 128
    :goto_4
    iget-object v9, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "Orientation"

    :try_start_3
    iget-object v11, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 129
    invoke-static {v8, v11}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 130
    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_d

    int-to-long v8, v2

    .line 140
    invoke-virtual {p1, v8, v9}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    new-array v8, v7, [B

    .line 142
    invoke-virtual {p1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ne v9, v7, :cond_c

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, -0x6

    .line 147
    sget-object v7, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 152
    new-array v7, v3, [B

    .line 153
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 157
    iput v2, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    .line 158
    invoke-direct {p0, v7, v5}, Lio/dcloud/common/util/ExifInterface;->readExifSegment([BI)V

    goto :goto_5

    .line 159
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read exif"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Can\'t read identifier"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid exif length"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_e
    :goto_5
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_f

    const-string p1, "ExifInterface"

    .line 186
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heif meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    :cond_f
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_10
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 190
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private getJpegAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1
    sget-boolean v3, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    .line 9
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v5

    const-string v6, "Invalid marker: "

    const/4 v7, -0x1

    if-ne v5, v7, :cond_11

    .line 18
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v8

    const/16 v9, -0x28

    if-ne v8, v9, :cond_10

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v8

    if-ne v8, v7, :cond_f

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 28
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v9

    .line 29
    sget-boolean v10, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 30
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found JPEG segment indicator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v12, v9, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/2addr v6, v8

    const/16 v11, -0x27

    if-eq v9, v11, :cond_e

    const/16 v11, -0x26

    if-ne v9, v11, :cond_2

    goto/16 :goto_5

    .line 39
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    sub-int/2addr v11, v5

    add-int/2addr v6, v5

    if-eqz v10, :cond_3

    .line 42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "JPEG segment: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v12, v9, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (length: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v11, 0x2

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v10, "Invalid length"

    if-ltz v11, :cond_d

    const/16 v12, -0x1f

    if-eq v9, v12, :cond_8

    const/4 v12, -0x2

    if-eq v9, v12, :cond_5

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    goto :goto_1

    .line 148
    :pswitch_0
    invoke-virtual {v1, v8}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 151
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    .line 152
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v12, v9

    iget-object v9, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 153
    invoke-static {v12, v13, v9}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v9

    const-string v12, "ImageLength"

    invoke-virtual {v8, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    .line 156
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v12, v9

    iget-object v9, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 157
    invoke-static {v12, v13, v9}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v9

    const-string v12, "ImageWidth"

    invoke-virtual {v8, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x5

    goto :goto_1

    .line 158
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid SOFx"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_5
    new-array v9, v11, [B

    .line 84
    invoke-virtual {v1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-ne v12, v11, :cond_7

    const-string v11, "UserComment"

    .line 88
    invoke-virtual {v0, v11}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    .line 89
    iget-object v12, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v12, v8

    new-instance v12, Ljava/lang/String;

    sget-object v13, Lio/dcloud/common/util/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v12, v9, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v12}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v8, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v20, v4

    goto :goto_4

    .line 90
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid exif"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_8
    new-array v9, v11, [B

    .line 92
    invoke-virtual {v1, v9}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int v12, v6, v11

    .line 96
    sget-object v13, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v13}, Lio/dcloud/common/util/ExifInterface;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 97
    array-length v8, v13

    invoke-static {v9, v8, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    add-int v6, p2, v6

    .line 100
    array-length v9, v13

    add-int/2addr v6, v9

    iput v6, v0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    .line 103
    invoke-direct {v0, v8, v2}, Lio/dcloud/common/util/ExifInterface;->readExifSegment([BI)V

    .line 105
    new-instance v6, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v6, v8}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Lio/dcloud/common/util/ExifInterface;->setThumbnailData(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_2

    .line 106
    :cond_9
    sget-object v13, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v9, v13}, Lio/dcloud/common/util/ExifInterface;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 108
    array-length v14, v13

    add-int/2addr v6, v14

    .line 109
    array-length v13, v13

    invoke-static {v9, v13, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const-string v11, "Xmp"

    .line 113
    invoke-virtual {v0, v11}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    .line 114
    iget-object v13, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v3

    new-instance v15, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length v14, v9

    move-object/from16 v20, v4

    int-to-long v3, v6

    const/4 v6, 0x1

    move/from16 v16, v14

    move-object v14, v15

    move-object v5, v15

    move v15, v6

    move-wide/from16 v17, v3

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v19}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    invoke-virtual {v13, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput-boolean v8, v0, Lio/dcloud/common/util/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_3

    :cond_a
    :goto_2
    move-object/from16 v20, v4

    :goto_3
    move v6, v12

    const/4 v11, 0x0

    :goto_4
    if-ltz v11, :cond_c

    .line 175
    invoke-virtual {v1, v11}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v3

    if-ne v3, v11, :cond_b

    add-int/2addr v6, v11

    move-object/from16 v4, v20

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    .line 176
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid JPEG segment"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_c
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_e
    :goto_5
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 265
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid marker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v8, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v3, v5, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 4
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 5
    invoke-static {v0}, Lio/dcloud/common/util/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    return p1

    .line 9
    :cond_1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isHeifFormat([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    return p1

    .line 11
    :cond_2
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x7

    return p1

    .line 13
    :cond_3
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isRw2Format([B)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xa

    return p1

    .line 15
    :cond_4
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isPngFormat([B)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xd

    return p1

    .line 17
    :cond_5
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isWebpFormat([B)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xe

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getOrfAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getRawAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 10
    new-instance v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 12
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 16
    sget-object p1, Lio/dcloud/common/util/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v2, p1

    new-array v2, v2, [B

    .line 17
    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v3, 0x0

    .line 18
    invoke-virtual {v1, v3, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 19
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v4, v3

    new-array v4, v4, [B

    .line 20
    invoke-virtual {v1, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 22
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x8

    .line 23
    invoke-virtual {v1, v2, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc

    .line 25
    invoke-virtual {v1, v2, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 29
    invoke-direct {p0, v1, p1}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 32
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 33
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 34
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 38
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 48
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_6

    .line 50
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 51
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 56
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_6

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_6

    .line 58
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 59
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 66
    :cond_4
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 67
    invoke-static {v1, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 69
    invoke-static {v2, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v1, "ImageLength"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid aspect frame values. frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExifInterface"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private getPngAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    .line 11
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 16
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 17
    array-length v1, v1

    add-int/2addr v1, v0

    .line 31
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v1, v3

    new-array v4, v3, [B

    .line 35
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v1, v3

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    .line 42
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    :goto_1
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 50
    :cond_3
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    new-array v3, v2, [B

    .line 53
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 59
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p1

    .line 61
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 62
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 64
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v5, v4

    if-ne v5, p1, :cond_4

    .line 70
    iput v1, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    .line 71
    invoke-direct {p0, v3, v0}, Lio/dcloud/common/util/ExifInterface;->readExifSegment([BI)V

    .line 72
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->validateImages()V

    .line 74
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->setThumbnailData(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    :goto_2
    return-void

    .line 75
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v4}, Lio/dcloud/common/util/ExifInterface;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v2, v2, 0x4

    .line 102
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 103
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt PNG file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private getRafAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    const-string v1, "ExifInterface"

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRafAttributes starting with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    const/16 v3, 0x54

    .line 8
    invoke-virtual {p1, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v3, 0x4

    new-array v4, v3, [B

    new-array v5, v3, [B

    new-array v3, v3, [B

    .line 12
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    .line 13
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    .line 14
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 15
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 16
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 17
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 19
    new-array v5, v5, [B

    int-to-long v6, v4

    .line 20
    invoke-virtual {p1, v6, v7}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 21
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    .line 24
    new-instance v6, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v6, v5}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    const/4 v5, 0x5

    .line 25
    invoke-direct {p0, v6, v4, v5}, Lio/dcloud/common/util/ExifInterface;->getJpegAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v3, v3

    .line 28
    invoke-virtual {p1, v3, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 31
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 32
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numberOfDirectoryEntry: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    .line 40
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 41
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    .line 42
    sget-object v6, Lio/dcloud/common/util/ExifInterface;->TAG_RAF_IMAGE_SIZE:Lio/dcloud/common/util/ExifInterface$ExifTag;

    iget v6, v6, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    if-ne v4, v6, :cond_3

    .line 43
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 44
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 45
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 46
    invoke-static {v0, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 47
    iget-object v4, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 48
    invoke-static {p1, v4}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 49
    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v2

    const-string v6, "ImageLength"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v3, v2

    const-string v3, "ImageWidth"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-boolean v2, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated to length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 56
    :cond_3
    invoke-virtual {p1, v5}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private getRawAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->parseTiffHeaders(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 7
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->updateImageSizeValues(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 8
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->updateImageSizeValues(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 9
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->updateImageSizeValues(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 12
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->validateImages()V

    .line 14
    iget p1, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 17
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 21
    new-instance v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 23
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 26
    invoke-virtual {v1, v2, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 29
    invoke-direct {p0, v1, p1}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 32
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 33
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_0

    .line 35
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getRw2Attributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRw2Attributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getRawAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "JpgFromRaw"

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_1

    .line 11
    new-instance v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 13
    iget-wide v2, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytesOffset:J

    long-to-int p1, v2

    const/4 v2, 0x5

    invoke-direct {p0, v1, p1, v2}, Lio/dcloud/common/util/ExifInterface;->getJpegAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 18
    :cond_1
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v0, "ISO"

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 20
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "PhotographicSensitivity"

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private getStandaloneAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 3
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 4
    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 6
    array-length p1, v0

    iput p1, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, v1, p1}, Lio/dcloud/common/util/ExifInterface;->readExifSegment([BI)V

    return-void
.end method

.method private getWebpAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mark(I)V

    .line 10
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 12
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 15
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 17
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_0
    const/4 v3, 0x4

    :try_start_0
    new-array v4, v3, [B

    .line 32
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/2addr v2, v3

    .line 38
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    add-int/2addr v2, v3

    .line 41
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    new-array v1, v5, [B

    .line 44
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v5, :cond_1

    .line 49
    iput v2, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    .line 50
    invoke-direct {p0, v1, v0}, Lio/dcloud/common/util/ExifInterface;->readExifSegment([BI)V

    .line 52
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->setThumbnailData(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 53
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v4}, Lio/dcloud/common/util/ExifInterface;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    rem-int/lit8 v3, v5, 0x2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int v3, v2, v5

    if-ne v3, v1, :cond_4

    :goto_1
    return-void

    :cond_4
    const-string v4, "Encountered WebP file with invalid chunk size"

    if-gt v3, v1, :cond_6

    .line 75
    :try_start_1
    invoke-virtual {p1, v5}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    add-int/2addr v2, v3

    goto :goto_0

    .line 77
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Encountered corrupt WebP file."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 3
    aget-object v0, p0, v2

    invoke-static {v0}, Lio/dcloud/common/util/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    return-object v0

    .line 7
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_8

    .line 8
    aget-object v1, p0, v3

    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 10
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    goto :goto_2

    .line 12
    :cond_2
    :goto_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 14
    :goto_2
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v6, :cond_4

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, -0x1

    :goto_3
    if-ne v2, v6, :cond_5

    if-ne v1, v6, :cond_5

    .line 19
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_5
    if-ne v2, v6, :cond_6

    .line 22
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-ne v1, v6, :cond_7

    .line 26
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const-string v0, "/"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_f

    .line 34
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 35
    array-length v0, p0

    if-ne v0, v4, :cond_e

    .line 37
    :try_start_0
    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    .line 38
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v2, v2

    const/16 p0, 0xa

    cmp-long v4, v0, v8

    if-ltz v4, :cond_d

    cmp-long v4, v2, v8

    if-gez v4, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x5

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v0, v8

    if-gtz v6, :cond_c

    cmp-long v0, v2, v8

    if-lez v0, :cond_b

    goto :goto_5

    .line 45
    :cond_b
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 46
    :cond_c
    :goto_5
    new-instance p0, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 47
    :cond_d
    :goto_6
    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    :cond_e
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 60
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x4

    cmp-long v4, v1, v8

    if-ltz v4, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v10, 0xffff

    cmp-long v4, v1, v10

    if-gtz v4, :cond_10

    .line 62
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 64
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-gez v2, :cond_11

    .line 65
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 67
    :cond_11
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 72
    :catch_1
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 73
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 77
    :catch_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 3
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 6
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 7
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 9
    iget v1, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 11
    iget v1, p0, Lio/dcloud/common/util/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez v0, :cond_2

    if-lez p2, :cond_2

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    .line 18
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v1, :cond_1

    .line 22
    new-array v1, p2, [B

    int-to-long v2, v0

    .line 23
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 24
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 25
    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    .line 27
    :cond_1
    iput v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailOffset:I

    .line 28
    iput p2, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    .line 30
    :cond_2
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting thumbnail attributes with offset: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExifInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    .line 1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    const-string v4, "StripByteCounts"

    .line 3
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 6
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 7
    invoke-virtual {v3, v4}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v3

    .line 8
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 9
    invoke-virtual {v2, v4}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v2

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_a

    .line 11
    array-length v5, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_9

    .line 15
    array-length v5, v2

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 19
    :cond_1
    array-length v5, v3

    array-length v6, v2

    if-eq v5, v6, :cond_2

    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 20
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-wide/16 v5, 0x0

    .line 25
    array-length v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    aget-wide v10, v2, v9

    add-long/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    long-to-int v6, v5

    .line 31
    new-array v5, v6, [B

    const/4 v7, 0x1

    .line 35
    iput-boolean v7, v0, Lio/dcloud/common/util/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v7, v0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v7, v0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 36
    :goto_1
    array-length v12, v3

    if-ge v9, v12, :cond_8

    .line 37
    aget-wide v12, v3, v9

    long-to-int v13, v12

    .line 38
    aget-wide v14, v2, v9

    long-to-int v12, v14

    .line 42
    array-length v14, v3

    sub-int/2addr v14, v7

    if-ge v9, v14, :cond_4

    add-int v14, v13, v12

    int-to-long v14, v14

    add-int/lit8 v16, v9, 0x1

    aget-wide v16, v3, v16

    cmp-long v18, v14, v16

    if-eqz v18, :cond_4

    .line 44
    iput-boolean v8, v0, Lio/dcloud/common/util/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    :cond_4
    sub-int/2addr v13, v10

    if-gez v13, :cond_5

    const-string v1, "Invalid strip offset value"

    .line 50
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    int-to-long v14, v13

    .line 53
    invoke-virtual {v1, v14, v15}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v16

    const-string v7, " bytes."

    cmp-long v18, v16, v14

    if-eqz v18, :cond_6

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to skip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    add-int/2addr v10, v13

    .line 59
    new-array v13, v12, [B

    .line 60
    invoke-virtual {v1, v13}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-eq v14, v12, :cond_7

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    add-int/2addr v10, v12

    .line 67
    invoke-static {v13, v8, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    goto :goto_1

    .line 71
    :cond_8
    iput-object v5, v0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    .line 73
    iget-boolean v1, v0, Lio/dcloud/common/util/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v1, :cond_b

    .line 74
    aget-wide v1, v3, v8

    long-to-int v2, v1

    iput v2, v0, Lio/dcloud/common/util/ExifInterface;->mThumbnailOffset:I

    .line 75
    iput v6, v0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    goto :goto_4

    :cond_9
    :goto_2
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 76
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :goto_3
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 77
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "filename cannot be null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    .line 10
    :goto_0
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 13
    throw p1
.end method

.method private static isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2
    array-length v0, v0

    new-array v0, v0, [B

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 4
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 6
    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isHeifFormat([B)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x4

    new-array v5, v1, [B

    .line 5
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 7
    sget-object v6, Lio/dcloud/common/util/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    .line 62
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_0
    const-wide/16 v5, 0x10

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x1

    cmp-long v11, v3, v9

    if-nez v11, :cond_1

    .line 63
    :try_start_2
    invoke-virtual {v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v11, v3, v5

    if-gez v11, :cond_2

    .line 110
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_1
    move-wide v5, v7

    .line 111
    :cond_2
    :try_start_3
    array-length v11, p1

    int-to-long v11, v11

    cmp-long v13, v3, v11

    if-lez v13, :cond_3

    .line 112
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v3, p1

    :cond_3
    sub-long/2addr v3, v5

    cmp-long p1, v3, v7

    if-gez p1, :cond_4

    .line 149
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_4
    :try_start_4
    new-array p1, v1, [B

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v11, 0x4

    .line 153
    div-long v11, v3, v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_b

    .line 154
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v11, v1, :cond_5

    .line 176
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :cond_5
    cmp-long v11, v5, v9

    if-nez v11, :cond_6

    goto :goto_2

    .line 177
    :cond_6
    :try_start_5
    sget-object v11, Lio/dcloud/common/util/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    .line 179
    :cond_7
    sget-object v11, Lio/dcloud/common/util/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {p1, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_8

    const/4 v8, 0x1

    :cond_8
    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 192
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v12

    :cond_9
    :goto_2
    add-long/2addr v5, v9

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 193
    :goto_3
    :try_start_6
    sget-boolean v2, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ExifInterface"

    const-string v3, "Exception parsing HEIF file type box."

    .line 194
    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_a
    if-eqz v1, :cond_c

    move-object v2, v1

    .line 198
    :cond_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_c
    return v0

    :goto_4
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 201
    :cond_d
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-byte v3, p0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-direct {p0, v2}, Lio/dcloud/common/util/ExifInterface;->readByteOrder(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v2, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 8
    invoke-virtual {v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x4f52

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5352

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 16
    :cond_2
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    return v0
.end method

.method private isPngFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRafFormat([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "FUJIFILMCCD-RAW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isRw2Format([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-direct {p0, v2}, Lio/dcloud/common/util/ExifInterface;->readByteOrder(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v2, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 8
    invoke-virtual {v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 14
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 16
    :cond_1
    throw p1

    :catch_1
    nop

    :goto_1
    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return v0
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const-wide/16 v2, 0x0

    .line 3
    :try_start_0
    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v2, v3, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    nop

    .line 6
    sget-boolean p0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExifInterface"

    const-string v0, "The file descriptor for the given input is not seekable"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 5
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 10
    :cond_0
    iget v2, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    const-string v2, "PhotometricInterpretation"

    .line 12
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3

    .line 14
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 15
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 16
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 17
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v3

    .line 27
    :cond_3
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "ExifInterface"

    const-string v0, "Unsupported data type value"

    .line 28
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private isSupportedFormatForSavingAttributes()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "mimeType shouldn\'t be null"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "image/x-canon-cr2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "image/x-nikon-nrw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "image/x-nikon-nef"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "image/x-olympus-orf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "image/x-pentax-pef"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "image/x-panasonic-rw2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "image/x-adobe-dng"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "image/webp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_9
    const-string v1, "image/jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_a
    const-string v1, "image/heif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_b
    const-string v1, "image/heic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_c
    const-string v1, "image/x-sony-arw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_d
    const-string v1, "image/x-samsung-srw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_e
    const-string v1, "image/x-fuji-raf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_e
        -0x617ac9e4 -> :sswitch_d
        -0x5f082c57 -> :sswitch_c
        -0x58a8e8f5 -> :sswitch_b
        -0x58a8e8f2 -> :sswitch_a
        -0x58a7d764 -> :sswitch_9
        -0x58a21830 -> :sswitch_8
        -0x54d6098a -> :sswitch_7
        -0x3ab85cc1 -> :sswitch_6
        -0x34686c8b -> :sswitch_5
        -0x13d592a1 -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isWebpFormat([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-byte v3, p1, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 7
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v3, v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4

    const-string v0, "inputstream shouldn\'t be null"

    .line 334
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v1, p0, Lio/dcloud/common/util/ExifInterface;->mIsExifDataOnly:Z

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 8
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    move-object p1, v1

    .line 12
    :cond_1
    new-instance v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    iget-boolean p1, p0, Lio/dcloud/common/util/ExifInterface;->mIsExifDataOnly:Z

    if-nez p1, :cond_7

    .line 15
    iget p1, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 42
    :pswitch_0
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getWebpAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 77
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 78
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    :cond_2
    return-void

    .line 79
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getPngAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 118
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 119
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    :cond_3
    return-void

    .line 120
    :pswitch_2
    :try_start_2
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getHeifAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 128
    :pswitch_3
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getRw2Attributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 171
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 172
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    :cond_4
    return-void

    .line 173
    :pswitch_4
    :try_start_3
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getRafAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 228
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 229
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    :cond_5
    return-void

    .line 230
    :pswitch_5
    :try_start_4
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getOrfAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 231
    :pswitch_6
    invoke-direct {p0, v1, v0, v0}, Lio/dcloud/common/util/ExifInterface;->getJpegAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 289
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 291
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 292
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    :cond_6
    return-void

    .line 293
    :pswitch_7
    :try_start_5
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getRawAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_1

    .line 301
    :cond_7
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getStandaloneAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V

    .line 304
    :goto_1
    iget p1, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 305
    invoke-direct {p0, v1}, Lio/dcloud/common/util/ExifInterface;->setThumbnailData(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 315
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 317
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_9

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 318
    :try_start_6
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 319
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 324
    :cond_8
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    if-eqz v0, :cond_9

    .line 327
    :goto_2
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    :cond_9
    return-void

    .line 328
    :goto_3
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 330
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 331
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->printAttributes()V

    .line 333
    :cond_a
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 9
    :try_start_0
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    .line 11
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    if-eqz p2, :cond_4

    const/4 p0, 0x1

    .line 18
    invoke-virtual {p2, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 19
    invoke-virtual {p2, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x4

    .line 20
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "+"

    .line 21
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "-"

    if-nez v8, :cond_2

    :try_start_1
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_4

    :cond_2
    const-string v8, ":"

    .line 22
    :try_start_2
    invoke-virtual {p2, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0xe

    if-gt v5, p2, :cond_4

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    .line 24
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    mul-int v5, v5, p0

    int-to-long v1, v5

    add-long/2addr v3, v1

    :cond_4
    if-eqz p1, :cond_6

    .line 30
    :try_start_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_1
    const-wide/16 v1, 0x3e8

    cmp-long p2, p0, v1

    if-lez p2, :cond_5

    const-wide/16 v1, 0xa

    .line 32
    div-long/2addr p0, v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_5
    add-long/2addr v3, p0

    .line 39
    :catch_0
    :cond_6
    :try_start_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    return-object p0

    :catch_1
    :cond_7
    :goto_2
    return-object v0
.end method

.method private parseTiffHeaders(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->readByteOrder(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3
    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 7
    iget v1, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid start code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    if-ge v0, p2, :cond_4

    add-int/lit8 v0, v0, -0x8

    if-lez v0, :cond_3

    .line 18
    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid first Ifd offset: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagType: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagValue: \'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {v4, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private readByteOrder(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    const-string v0, "ExifInterface"

    const/16 v1, 0x4949

    if-eq p1, v1, :cond_2

    const/16 v1, 0x4d4d

    if-ne p1, v1, :cond_1

    .line 9
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "readExifSegment: Byte Align MM"

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1

    .line 14
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byte order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "readExifSegment: Byte Align II"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_3
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p1
.end method

.method private readExifSegment([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lio/dcloud/common/util/ExifInterface;->parseTiffHeaders(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 8
    invoke-direct {p0, v0, p2}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    iget v4, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget v3, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget v5, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-le v3, v5, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 9
    sget-boolean v5, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_1

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    iget v5, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mPosition:I

    mul-int/lit8 v7, v3, 0xc

    add-int/2addr v5, v7

    iget v7, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v5, v7, :cond_2b

    if-gtz v3, :cond_2

    goto/16 :goto_12

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x5

    if-ge v7, v3, :cond_26

    .line 20
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    .line 21
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v14

    .line 22
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v15

    .line 24
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v18, 0x4

    add-long v9, v9, v18

    .line 27
    sget-object v20, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v12, v20, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 29
    sget-boolean v12, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    const/4 v11, 0x3

    if-eqz v12, :cond_4

    new-array v8, v8, [Ljava/lang/Object;

    .line 31
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v20, 0x1

    aput-object v23, v8, v20

    if-eqz v4, :cond_3

    .line 32
    iget-object v5, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/16 v22, 0x2

    aput-object v5, v8, v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v21, 0x4

    aput-object v5, v8, v21

    const-string v5, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 33
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v5, 0x7

    if-nez v4, :cond_6

    if-eqz v12, :cond_5

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object v11, v6

    move/from16 v25, v7

    goto/16 :goto_5

    :cond_6
    if-lez v14, :cond_c

    .line 44
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v8

    if-lt v14, v11, :cond_7

    goto :goto_4

    .line 48
    :cond_7
    invoke-virtual {v4, v14}, Lio/dcloud/common/util/ExifInterface$ExifTag;->isFormatCompatible(I)Z

    move-result v11

    if-nez v11, :cond_8

    if-eqz v12, :cond_5

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip the tag entry since data format ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v14

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") is unexpected for tag: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-ne v14, v5, :cond_9

    .line 56
    iget v14, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->primaryFormat:I

    :cond_9
    move-object v11, v6

    int-to-long v5, v15

    .line 58
    aget v8, v8, v14

    move/from16 v25, v7

    int-to-long v7, v8

    mul-long v5, v5, v7

    const-wide/16 v7, 0x0

    cmp-long v26, v5, v7

    if-ltz v26, :cond_b

    const-wide/32 v7, 0x7fffffff

    cmp-long v26, v5, v7

    if-lez v26, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    :goto_3
    if-eqz v12, :cond_e

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    :goto_4
    move-object v11, v6

    move/from16 v25, v7

    if-eqz v12, :cond_d

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_5
    const-wide/16 v5, 0x0

    :cond_e
    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_f

    .line 85
    invoke-virtual {v1, v9, v10}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v26, v3

    :goto_8
    const/4 v13, 0x2

    goto/16 :goto_11

    :cond_f
    const-string v7, "Compression"

    cmp-long v8, v5, v18

    if-lez v8, :cond_15

    .line 92
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move/from16 v26, v3

    if-eqz v12, :cond_10

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v14

    const-string v14, "seek to data offset: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    move/from16 v18, v14

    .line 96
    :goto_9
    iget v3, v0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/4 v14, 0x7

    if-ne v3, v14, :cond_12

    .line 97
    iget-object v3, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v14, "MakerNote"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 99
    iput v8, v0, Lio/dcloud/common/util/ExifInterface;->mOrfMakerNoteOffset:I

    goto :goto_a

    :cond_11
    const/4 v3, 0x6

    if-ne v2, v3, :cond_12

    .line 100
    iget-object v14, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "ThumbnailImage"

    .line 101
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 103
    iput v8, v0, Lio/dcloud/common/util/ExifInterface;->mOrfThumbnailOffset:I

    .line 104
    iput v15, v0, Lio/dcloud/common/util/ExifInterface;->mOrfThumbnailLength:I

    .line 106
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v14, 0x6

    .line 107
    invoke-static {v14, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 108
    iget v14, v0, Lio/dcloud/common/util/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v19, v15

    int-to-long v14, v14

    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 109
    invoke-static {v14, v15, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 110
    iget v14, v0, Lio/dcloud/common/util/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    move-object/from16 v24, v4

    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 111
    invoke-static {v14, v15, v4}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 113
    iget-object v14, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v15

    const-string v14, "JPEGInterchangeFormat"

    invoke-virtual {v3, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v15

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    :goto_a
    move-object/from16 v24, v4

    move/from16 v19, v15

    :goto_b
    int-to-long v2, v8

    add-long v14, v2, v5

    .line 120
    iget v4, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    move-wide/from16 v27, v5

    int-to-long v4, v4

    cmp-long v6, v14, v4

    if-gtz v6, :cond_13

    .line 121
    invoke-virtual {v1, v2, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_c

    :cond_13
    if-eqz v12, :cond_14

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_14
    invoke-virtual {v1, v9, v10}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_8

    :cond_15
    move/from16 v26, v3

    move-object/from16 v24, v4

    move-wide/from16 v27, v5

    move/from16 v18, v14

    move/from16 v19, v15

    .line 133
    :goto_c
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v12, :cond_16

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v27

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    move-wide/from16 v5, v27

    :goto_d
    const/16 v3, 0x8

    if-eqz v2, :cond_1f

    const-wide/16 v4, -0x1

    move/from16 v14, v18

    const/4 v6, 0x3

    if-eq v14, v6, :cond_1a

    const/4 v6, 0x4

    if-eq v14, v6, :cond_19

    if-eq v14, v3, :cond_18

    const/16 v3, 0x9

    if-eq v14, v3, :cond_17

    const/16 v3, 0xd

    if-eq v14, v3, :cond_17

    goto :goto_f

    .line 156
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    goto :goto_e

    .line 157
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    goto :goto_e

    .line 161
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_f

    .line 162
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    :goto_e
    int-to-long v4, v3

    :goto_f
    const/4 v13, 0x2

    if-eqz v12, :cond_1b

    new-array v3, v13, [Ljava/lang/Object;

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    move-object/from16 v8, v24

    iget-object v6, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const-string v6, "Offset: %d, tagName: %s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1d

    .line 190
    iget v3, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_1d

    .line 191
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    long-to-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 192
    invoke-virtual {v1, v4, v5}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 193
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_10

    :cond_1c
    if-eqz v12, :cond_1e

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1d
    if-eqz v12, :cond_1e

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1e
    :goto_10
    invoke-virtual {v1, v9, v10}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_11

    :cond_1f
    move/from16 v14, v18

    move-object/from16 v8, v24

    const/4 v13, 0x2

    .line 210
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    iget v4, v0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v2, v4

    long-to-int v4, v5

    .line 211
    new-array v4, v4, [B

    .line 212
    invoke-virtual {v1, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 213
    new-instance v5, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-object v12, v4

    int-to-long v3, v2

    move/from16 v2, v19

    move-object v15, v5

    move/from16 v16, v14

    move/from16 v17, v2

    move-wide/from16 v18, v3

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 215
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    iget-object v3, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v2, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "DNGVersion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x3

    .line 221
    iput v2, v0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    .line 227
    :cond_20
    iget-object v2, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "Make"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v3, "Model"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 228
    invoke-virtual {v5, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PENTAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    iget-object v2, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 229
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 230
    invoke-virtual {v5, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_24

    :cond_23
    const/16 v2, 0x8

    .line 231
    iput v2, v0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    .line 235
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v9

    if-eqz v4, :cond_25

    .line 236
    invoke-virtual {v1, v9, v10}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_25
    :goto_11
    add-int/lit8 v7, v25, 0x1

    int-to-short v7, v7

    move/from16 v2, p2

    move-object v6, v11

    move/from16 v3, v26

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_26
    move-object v11, v6

    .line 240
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iget v3, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-gt v2, v3, :cond_2b

    .line 241
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 242
    sget-boolean v3, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_27

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v9, v4, v6

    if-lez v9, :cond_2a

    .line 248
    iget v6, v1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->mLength:I

    if-ge v2, v6, :cond_2a

    .line 249
    iget-object v6, v0, Lio/dcloud/common/util/ExifInterface;->mAttributesOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 250
    invoke-virtual {v1, v4, v5}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 251
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 253
    invoke-direct {v0, v1, v3}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_12

    .line 254
    :cond_28
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 255
    invoke-direct {v0, v1, v8}, Lio/dcloud/common/util/ExifInterface;->readImageFileDirectory(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_12

    :cond_29
    if-eqz v3, :cond_2b

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_2a
    if-eqz v3, :cond_2b

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_12
    return-void
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 3
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 8
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 10
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "JPEGInterchangeFormatLength"

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 15
    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 16
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 17
    invoke-virtual {v0, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    int-to-long v2, v1

    .line 20
    invoke-virtual {p1, v2, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 21
    new-array v0, v0, [B

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 23
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    invoke-direct {p0, p1, v1, p2}, Lio/dcloud/common/util/ExifInterface;->getJpegAttributes(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const-string v1, "Invalid marker"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_e

    .line 11
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/16 v3, -0x28

    if-ne p2, v3, :cond_d

    .line 15
    invoke-virtual {p1, v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 p2, 0x0

    const-string v3, "Xmp"

    .line 21
    invoke-virtual {p0, v3}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lio/dcloud/common/util/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v4, :cond_1

    .line 22
    iget-object p2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, p2, v5

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 26
    :cond_1
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v4, -0x1f

    .line 27
    invoke-virtual {p1, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 28
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I

    if-eqz p2, :cond_2

    .line 32
    iget-object v6, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 p2, 0x1000

    new-array v3, p2, [B

    .line 38
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    if-ne v6, v2, :cond_c

    .line 42
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const/16 v7, -0x27

    if-eq v6, v7, :cond_b

    const/16 v7, -0x26

    if-eq v6, v7, :cond_b

    const-string v7, "Invalid length"

    if-eq v6, v4, :cond_5

    .line 88
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 89
    invoke-virtual {p1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 90
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 91
    invoke-virtual {p1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_4

    :goto_1
    if-lez v6, :cond_3

    .line 98
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 99
    invoke-virtual {v0, v3, v5, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_3

    .line 101
    invoke-virtual {p1, v3, v5, v7}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v6, v7

    goto :goto_1

    .line 102
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_a

    const/4 v9, 0x6

    new-array v10, v9, [B

    if-lt v8, v9, :cond_8

    .line 109
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->read([B)I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 112
    sget-object v11, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v8, v8, -0x6

    .line 114
    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v6

    if-ne v6, v8, :cond_6

    goto :goto_0

    .line 115
    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_8
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 128
    invoke-virtual {p1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v6, v8, 0x2

    .line 129
    invoke-virtual {p1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v8, v9, :cond_9

    add-int/lit8 v8, v8, -0x6

    .line 132
    invoke-virtual {p1, v10}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_9
    :goto_2
    if-lez v8, :cond_3

    .line 136
    invoke-static {v8, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 137
    invoke-virtual {v0, v3, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_3

    .line 139
    invoke-virtual {p1, v3, v5, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v8, v6

    goto :goto_2

    .line 140
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_b
    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 174
    invoke-virtual {p1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 176
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 177
    :cond_c
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_e
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 10
    sget-object p2, Lio/dcloud/common/util/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, p2

    invoke-static {v0, p1, v2}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 18
    iget v2, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    const/4 v3, 0x4

    if-nez v2, :cond_1

    .line 20
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 21
    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/2addr p2, v3

    add-int/2addr p2, v3

    .line 22
    invoke-static {v0, p1, p2}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 26
    :cond_1
    array-length p2, p2

    sub-int/2addr v2, p2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v3

    .line 29
    invoke-static {v0, p1, v2}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 32
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    add-int/2addr p2, v3

    add-int/2addr p2, v3

    .line 33
    invoke-virtual {v0, p2}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_0
    const/4 p2, 0x0

    .line 42
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    new-instance p2, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;

    invoke-direct {p2, v2, v1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 48
    invoke-direct {p0, p2}, Lio/dcloud/common/util/ExifInterface;->writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 49
    iget-object p2, p2, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    .line 50
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 56
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 57
    array-length v4, p2

    sub-int/2addr v4, v3

    invoke-virtual {v1, p2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 58
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int p2, v3

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 65
    :goto_1
    invoke-static {p2}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    throw p1
.end method

.method private saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    sget-boolean v3, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", outputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExifInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    new-instance v3, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v0, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 7
    new-instance v5, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;

    invoke-direct {v5, v2, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 11
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v6, v2

    invoke-static {v3, v5, v6}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 13
    sget-object v6, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v7, v6

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-virtual {v3, v7}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v7, 0x0

    .line 18
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    new-instance v10, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;

    invoke-direct {v10, v9, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 23
    iget v4, v1, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    if-eqz v4, :cond_1

    .line 26
    array-length v0, v2

    add-int/2addr v0, v8

    array-length v2, v6

    add-int/2addr v0, v2

    sub-int/2addr v4, v0

    sub-int/2addr v4, v8

    sub-int/2addr v4, v8

    .line 28
    invoke-static {v3, v10, v4}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 33
    invoke-virtual {v3, v8}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 34
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    .line 35
    invoke-virtual {v3, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 38
    invoke-direct {v1, v10}, Lio/dcloud/common/util/ExifInterface;->writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_7

    :cond_1
    new-array v2, v8, [B

    .line 42
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ne v4, v8, :cond_10

    .line 47
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_6

    .line 49
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 51
    rem-int/lit8 v6, v2, 0x2

    if-ne v6, v12, :cond_2

    add-int/lit8 v6, v2, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    new-array v6, v6, [B

    .line 52
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    .line 55
    aget-byte v14, v6, v13

    or-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v6, v13

    .line 58
    aget-byte v11, v6, v13

    shr-int/2addr v11, v12

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 61
    :goto_1
    invoke-virtual {v10, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 62
    invoke-virtual {v10, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 63
    invoke-virtual {v10, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-eqz v12, :cond_5

    .line 73
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    invoke-direct {v1, v3, v10, v2, v7}, Lio/dcloud/common/util/ExifInterface;->copyChunksUpToGivenChunkType(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    :goto_2
    new-array v2, v8, [B

    .line 79
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 80
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 82
    invoke-direct {v1, v10}, Lio/dcloud/common/util/ExifInterface;->writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_7

    .line 85
    :cond_4
    invoke-direct {v1, v3, v10, v2}, Lio/dcloud/common/util/ExifInterface;->copyWebPChunk(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;[B)V

    goto :goto_2

    .line 89
    :cond_5
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v3, v10, v0, v2}, Lio/dcloud/common/util/ExifInterface;->copyChunksUpToGivenChunkType(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    .line 91
    invoke-direct {v1, v10}, Lio/dcloud/common/util/ExifInterface;->writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_7

    .line 93
    :cond_6
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    .line 94
    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 95
    :cond_7
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 98
    rem-int/lit8 v7, v6, 0x2

    if-ne v7, v12, :cond_8

    add-int/lit8 v7, v6, 0x1

    goto :goto_3

    :cond_8
    move v7, v6

    :goto_3
    const/4 v14, 0x3

    new-array v15, v14, [B

    .line 110
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    const/16 v8, 0x2f

    if-eqz v16, :cond_a

    .line 111
    invoke-virtual {v3, v15}, Ljava/io/InputStream;->read([B)I

    new-array v12, v14, [B

    .line 115
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-ne v11, v14, :cond_9

    sget-object v11, Lio/dcloud/common/util/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    .line 116
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 122
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    shl-int/lit8 v12, v11, 0x12

    shr-int/lit8 v12, v12, 0x12

    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v14, v14, 0x12

    add-int/lit8 v7, v7, -0xa

    goto :goto_4

    .line 123
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered error while checking VP8 signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_a
    sget-object v11, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 134
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v11

    if-ne v11, v8, :cond_b

    .line 141
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v11

    shl-int/lit8 v14, v11, 0x12

    shr-int/lit8 v14, v14, 0x12

    add-int/2addr v14, v12

    shl-int/lit8 v17, v11, 0x4

    shr-int/lit8 v17, v17, 0x12

    add-int/lit8 v12, v17, 0x1

    and-int/lit8 v17, v11, 0x8

    add-int/lit8 v7, v7, -0x5

    move/from16 v19, v14

    move v14, v12

    move/from16 v12, v19

    goto :goto_5

    .line 142
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered error while checking VP8L signature"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_4
    const/16 v17, 0x0

    .line 158
    :goto_5
    invoke-virtual {v10, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/16 v4, 0xa

    .line 159
    invoke-virtual {v10, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    new-array v4, v4, [B

    .line 162
    aget-byte v18, v4, v13

    const/16 v16, 0x8

    or-int/lit8 v8, v18, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v13

    .line 164
    aget-byte v8, v4, v13

    const/16 v18, 0x4

    shl-int/lit8 v17, v17, 0x4

    or-int v8, v8, v17

    int-to-byte v8, v8

    aput-byte v8, v4, v13

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v14, v14, -0x1

    int-to-byte v8, v12

    aput-byte v8, v4, v18

    shr-int/lit8 v8, v12, 0x8

    int-to-byte v8, v8

    const/4 v13, 0x5

    aput-byte v8, v4, v13

    shr-int/lit8 v8, v12, 0x10

    int-to-byte v8, v8

    const/4 v12, 0x6

    aput-byte v8, v4, v12

    int-to-byte v8, v14

    const/4 v12, 0x7

    aput-byte v8, v4, v12

    shr-int/lit8 v8, v14, 0x8

    int-to-byte v8, v8

    const/16 v12, 0x8

    aput-byte v8, v4, v12

    shr-int/lit8 v8, v14, 0x10

    int-to-byte v8, v8

    const/16 v12, 0x9

    aput-byte v8, v4, v12

    .line 174
    invoke-virtual {v10, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 177
    invoke-virtual {v10, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 178
    invoke-virtual {v10, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 179
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 180
    invoke-virtual {v10, v15}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 181
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v10, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 182
    invoke-virtual {v10, v11}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_6

    .line 183
    :cond_d
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x2f

    .line 184
    invoke-virtual {v10, v0}, Ljava/io/FilterOutputStream;->write(I)V

    .line 185
    invoke-virtual {v10, v11}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 187
    :cond_e
    :goto_6
    invoke-static {v3, v10, v7}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 190
    invoke-direct {v1, v10}, Lio/dcloud/common/util/ExifInterface;->writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I

    .line 195
    :cond_f
    :goto_7
    invoke-static {v3, v10}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 198
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 200
    invoke-virtual {v5, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 201
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-static {v9}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 206
    :cond_10
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v7, v9

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v7, v9

    goto :goto_8

    :catch_1
    move-exception v0

    .line 354
    :goto_8
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 356
    :goto_9
    invoke-static {v7}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 357
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private setThumbnailData(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    const/4 v2, 0x6

    if-eqz v1, :cond_2

    .line 6
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->handleThumbnailFromJfif(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->handleThumbnailFromStrips(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 22
    :cond_2
    iput v2, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailCompression:I

    .line 23
    invoke-direct {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->handleThumbnailFromJfif(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static startsWith([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 5
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method private swapBasedOnImageSize(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v2, "ImageLength"

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 10
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    const-string v4, "ImageWidth"

    .line 11
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 12
    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 13
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 14
    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    .line 15
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 27
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 28
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 29
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_5

    if-ge v1, v3, :cond_5

    .line 33
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v0, p1

    .line 34
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 35
    aput-object v1, v0, p2

    goto :goto_2

    .line 36
    :cond_3
    :goto_0
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "Second image does not contain valid size information"

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 38
    :cond_4
    :goto_1
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "First image does not contain valid size information"

    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void

    .line 40
    :cond_6
    :goto_3
    sget-boolean p1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "Cannot perform swap since only one image data exists"

    .line 41
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateImageSizeValues(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 4
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 6
    iget-object v2, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 8
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 9
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 10
    iget-object v4, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 11
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v0, :cond_5

    .line 16
    iget p1, v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v7, "ExifInterface"

    const-string v8, "Invalid crop size values. cropSize="

    if-ne p1, v1, :cond_2

    .line 17
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 18
    invoke-virtual {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    if-eqz p1, :cond_1

    .line 19
    array-length v0, p1

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    aget-object v0, p1, v3

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 25
    invoke-static {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createURational(Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 26
    aget-object p1, p1, v2

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 27
    invoke-static {p1, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createURational(Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 39
    :cond_2
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 40
    invoke-virtual {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    .line 41
    array-length v0, p1

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 46
    :cond_3
    aget v0, p1, v3

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 47
    invoke-static {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 48
    aget p1, p1, v2

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 49
    invoke-static {p1, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 51
    :goto_1
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p2, v0, p2

    invoke-virtual {p2, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 53
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 69
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 70
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 72
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_7

    if-le v1, v2, :cond_7

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 76
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 77
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 79
    invoke-static {v1, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, p2

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 84
    :cond_6
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/ExifInterface;->retrieveJpegImageSize(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private validateImages()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1
    invoke-direct {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    .line 2
    invoke-direct {p0, v0, v2}, Lio/dcloud/common/util/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3
    invoke-direct {p0, v1, v2}, Lio/dcloud/common/util/ExifInterface;->swapBasedOnImageSize(II)V

    .line 9
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 11
    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 12
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 14
    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v3, v0

    const-string v3, "ImageLength"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v0, v1

    aput-object v3, v0, v2

    .line 23
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v0, v1

    .line 28
    :cond_1
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lio/dcloud/common/util/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private writeExifSegment(Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    .line 2
    array-length v2, v2

    new-array v2, v2, [I

    .line 5
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 6
    iget-object v8, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Lio/dcloud/common/util/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    iget-object v4, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Lio/dcloud/common/util/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 10
    sget-object v4, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    iget-object v4, v4, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Lio/dcloud/common/util/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 13
    :goto_1
    sget-object v5, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 14
    iget-object v5, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 15
    check-cast v9, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 17
    iget-object v10, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24
    :cond_3
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_4

    .line 25
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v9, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 26
    invoke-static {v7, v8, v10}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 27
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_4
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 31
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v10, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 32
    invoke-static {v7, v8, v11}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 33
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_5
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 37
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    sget-object v11, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 38
    invoke-static {v7, v8, v12}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 39
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_6
    iget-boolean v4, v0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_7

    .line 43
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    iget-object v12, v12, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 44
    invoke-static {v7, v8, v13}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 45
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    iget-object v12, v12, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 48
    invoke-static {v13, v14, v15}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 49
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v4, 0x0

    .line 55
    :goto_3
    sget-object v12, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v12, v12

    if-ge v4, v12, :cond_a

    .line 57
    iget-object v12, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 59
    invoke-virtual {v14}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v11, :cond_8

    add-int/2addr v13, v14

    goto :goto_4

    .line 64
    :cond_9
    aget v12, v2, v4

    add-int/2addr v12, v13

    aput v12, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    const/16 v4, 0x8

    const/4 v12, 0x0

    .line 71
    :goto_5
    sget-object v13, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v13, v13

    if-ge v12, v13, :cond_c

    .line 72
    iget-object v13, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 73
    aput v4, v3, v12

    .line 74
    iget-object v13, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    mul-int/lit8 v13, v13, 0xc

    add-int/2addr v13, v9

    add-int/2addr v13, v11

    aget v14, v2, v12

    add-int/2addr v13, v14

    add-int/2addr v4, v13

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 77
    :cond_c
    iget-boolean v12, v0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    if-eqz v12, :cond_d

    .line 79
    iget-object v12, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v11

    sget-object v13, Lio/dcloud/common/util/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lio/dcloud/common/util/ExifInterface$ExifTag;

    iget-object v13, v13, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v14, v4

    iget-object v7, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 80
    invoke-static {v14, v15, v7}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 81
    invoke-virtual {v12, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput v4, v0, Lio/dcloud/common/util/ExifInterface;->mThumbnailOffset:I

    .line 84
    iget v7, v0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    .line 88
    :cond_d
    iget v7, v0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    if-ne v7, v11, :cond_e

    add-int/lit8 v4, v4, 0x8

    .line 92
    :cond_e
    sget-boolean v7, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_f

    const/4 v7, 0x0

    .line 93
    :goto_6
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_f

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v6

    aget v12, v3, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v5

    iget-object v12, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v7

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v9

    aget v12, v2, v7

    .line 96
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const-string v12, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    .line 97
    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "ExifInterface"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 104
    :cond_f
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 105
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v7, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aget-object v7, v7, v5

    iget-object v7, v7, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v8, v3, v5

    int-to-long v12, v8

    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 106
    invoke-static {v12, v13, v8}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 107
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_10
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 111
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v6

    sget-object v7, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aget-object v7, v7, v9

    iget-object v7, v7, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v8, v3, v9

    int-to-long v12, v8

    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 112
    invoke-static {v12, v13, v8}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 113
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_11
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 117
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    sget-object v7, Lio/dcloud/common/util/ExifInterface;->EXIF_POINTER_TAGS:[Lio/dcloud/common/util/ExifInterface$ExifTag;

    aget-object v7, v7, v10

    iget-object v7, v7, Lio/dcloud/common/util/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v8, v3, v10

    int-to-long v12, v8

    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v13, v8}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_12
    iget v2, v0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-eq v2, v11, :cond_15

    const/16 v8, 0xd

    if-eq v2, v8, :cond_14

    if-eq v2, v7, :cond_13

    goto :goto_7

    .line 134
    :cond_13
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 135
    invoke-virtual {v1, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_7

    .line 136
    :cond_14
    invoke-virtual {v1, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 137
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    goto :goto_7

    .line 138
    :cond_15
    invoke-virtual {v1, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 139
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 154
    :goto_7
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v8, :cond_16

    const/16 v2, 0x4d4d

    goto :goto_8

    :cond_16
    const/16 v2, 0x4949

    :goto_8
    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 156
    iget-object v2, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v2, 0x2a

    .line 157
    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v12, 0x8

    .line 158
    invoke-virtual {v1, v12, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const/4 v2, 0x0

    .line 161
    :goto_9
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v2, v8, :cond_1e

    .line 162
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 165
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 168
    aget v8, v3, v2

    add-int/2addr v8, v9

    iget-object v10, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0xc

    add-int/2addr v8, v10

    add-int/2addr v8, v11

    .line 169
    iget-object v10, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 171
    sget-object v13, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v2

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/dcloud/common/util/ExifInterface$ExifTag;

    .line 172
    iget v13, v13, Lio/dcloud/common/util/ExifInterface$ExifTag;->number:I

    .line 173
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 174
    invoke-virtual {v12}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->size()I

    move-result v14

    .line 176
    invoke-virtual {v1, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 177
    iget v13, v12, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 178
    iget v13, v12, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v14, v11, :cond_18

    int-to-long v12, v8

    .line 180
    invoke-virtual {v1, v12, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v8, v14

    goto :goto_a

    .line 183
    :cond_18
    iget-object v12, v12, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v12}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v14, v11, :cond_17

    :goto_b
    if-ge v14, v11, :cond_17

    .line 187
    invoke-virtual {v1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_19
    if-nez v2, :cond_1a

    .line 196
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 197
    aget v8, v3, v11

    int-to-long v12, v8

    invoke-virtual {v1, v12, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v12, 0x0

    goto :goto_c

    :cond_1a
    const-wide/16 v12, 0x0

    .line 199
    invoke-virtual {v1, v12, v13}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 203
    :goto_c
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 206
    iget-object v10, v10, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v10

    if-le v14, v11, :cond_1b

    .line 207
    array-length v14, v10

    invoke-virtual {v1, v10, v6, v14}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_d

    :cond_1c
    const-wide/16 v12, 0x0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 214
    :cond_1e
    iget-boolean v2, v0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    if-eqz v2, :cond_1f

    .line 215
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/util/ExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 219
    :cond_1f
    iget v2, v0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    if-ne v2, v7, :cond_20

    rem-int/lit8 v2, v4, 0x2

    if-ne v2, v5, :cond_20

    .line 220
    invoke-virtual {v1, v6}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 224
    :cond_20
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v4
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    .line 33
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x4

    .line 33
    :goto_0
    :pswitch_7
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 7

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/util/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    .line 2
    invoke-virtual {p0, v2, v3}, Lio/dcloud/common/util/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    if-ltz v2, :cond_1

    const/4 p1, 0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    int-to-double p1, v3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "tag shouldn\'t be null"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v2, "GPSTimeStamp"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget p1, v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    const-string v3, "ExifInterface"

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 13
    :cond_1
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    if-eqz p1, :cond_3

    .line 14
    array-length v0, p1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 18
    aget-object v2, p1, v1

    iget-wide v2, v2, Lio/dcloud/common/util/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lio/dcloud/common/util/ExifInterface$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    iget-wide v2, v2, Lio/dcloud/common/util/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object v3, p1, v1

    iget-wide v3, v3, Lio/dcloud/common/util/ExifInterface$Rational;->denominator:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    iget-wide v2, v2, Lio/dcloud/common/util/ExifInterface$Rational;->numerator:J

    long-to-float v2, v2

    aget-object p1, p1, v1

    iget-wide v3, p1, Lio/dcloud/common/util/ExifInterface$Rational;->denominator:J

    long-to-float p1, v3

    div-float/2addr v2, p1

    float-to-int p1, v2

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%02d:%02d:%02d"

    .line 22
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GPS Timestamp array. array="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 32
    :cond_4
    :try_start_0
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method public getAttributeBytes(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "tag shouldn\'t be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 1

    const-string v0, "tag shouldn\'t be null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "tag shouldn\'t be null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method public getAttributeRange(Ljava/lang/String;)[J
    .locals 4

    const-string v0, "tag shouldn\'t be null"

    .line 10
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mModified:Z

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 8
    iget-wide v1, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytesOffset:J

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object p1, p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    array-length p1, p1

    int-to-long v1, p1

    const/4 p1, 0x1

    aput-wide v1, v0, p1

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The underlying file has been modified since being parsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDateTime()Ljava/lang/Long;
    .locals 3

    const-string v0, "DateTime"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTime"

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTime"

    .line 3
    invoke-virtual {p0, v2}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeDigitized()Ljava/lang/Long;
    .locals 3

    const-string v0, "DateTimeDigitized"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeDigitized"

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeDigitized"

    .line 3
    invoke-virtual {p0, v2}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeOriginal()Ljava/lang/Long;
    .locals 3

    const-string v0, "DateTimeOriginal"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeOriginal"

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeOriginal"

    .line 3
    invoke-virtual {p0, v2}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getGpsDateTime()Ljava/lang/Long;
    .locals 5

    const-string v0, "GPSDateStamp"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 2
    invoke-virtual {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 3
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->NON_ZERO_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 4
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 13
    :try_start_0
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    .line 15
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->sFormatterSecondary:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v2

    .line 20
    :cond_1
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getLatLong([F)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/util/ExifInterface;->getLatLong()[D

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 7
    aget-wide v2, v0, v1

    double-to-float v0, v2

    aput v0, p1, v1

    return v1
.end method

.method public getLatLong()[D
    .locals 12

    const-string v0, "GPSLatitude"

    .line 8
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    .line 9
    invoke-virtual {p0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    .line 10
    invoke-virtual {p0, v2}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    .line 11
    invoke-virtual {p0, v3}, Lio/dcloud/common/util/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 15
    :try_start_0
    invoke-static {v0, v1}, Lio/dcloud/common/util/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 16
    invoke-static {v2, v3}, Lio/dcloud/common/util/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    new-array v11, v4, [D

    aput-wide v7, v11, v6

    aput-wide v9, v11, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 19
    :catch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Latitude/longitude values are not parsable. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v6

    aput-object v1, v8, v5

    aput-object v2, v8, v4

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const-string v0, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    .line 20
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0x10e

    return v0

    :pswitch_2
    const/16 v0, 0xb4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/common/util/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/dcloud/common/util/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    .line 7
    :cond_1
    iget v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 10
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v2, v0, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 13
    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v7, v5, v6

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v7, v3

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    add-int/2addr v7, v5

    aput v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const-string v4, "ImageLength"

    .line 18
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    .line 19
    iget-object v4, p0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    .line 20
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 22
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 23
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 24
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1

    .line 25
    :cond_5
    :goto_1
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    iget v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 11

    const-string v0, "ExifInterface"

    .line 1
    iget-boolean v1, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 4
    :cond_0
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_1

    return-object v1

    .line 12
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_3

    .line 14
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_2
    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    move-object v4, v2

    goto/16 :goto_3

    .line 52
    :cond_3
    :try_start_2
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 53
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_5

    .line 58
    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-wide/16 v3, 0x0

    .line 59
    :try_start_3
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v1, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 60
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_2

    :cond_5
    move-object v1, v2

    move-object v3, v1

    :goto_1
    if-eqz v1, :cond_9

    .line 68
    :try_start_4
    iget v4, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailOffset:I

    iget v5, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailOffset:I

    iget v7, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/2addr v6, v7

    int-to-long v6, v6

    const-string v8, "Corrupted image"

    cmp-long v9, v4, v6

    if-nez v9, :cond_8

    .line 73
    :try_start_5
    iget v4, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    .line 74
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    iget v6, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    if-ne v5, v6, :cond_7

    .line 77
    iput-object v4, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 83
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    .line 85
    invoke-static {v3}, Lio/dcloud/common/util/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_6
    return-object v4

    .line 86
    :cond_7
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_8
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_9
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_2
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v3, v2

    :goto_2
    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    :goto_3
    :try_start_7
    const-string v5, "Encountered exception while getting thumbnail"

    .line 104
    invoke-static {v0, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 106
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v4, :cond_a

    .line 108
    invoke-static {v4}, Lio/dcloud/common/util/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_a
    return-object v2

    :catchall_4
    move-exception v0

    move-object v2, v4

    :goto_4
    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 109
    :goto_5
    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_b

    .line 111
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 113
    :cond_b
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getThumbnailRange()[J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mModified:Z

    if-nez v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 10
    iget v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailOffset:I

    iget v2, p0, Lio/dcloud/common/util/ExifInterface;->mOffsetToExifData:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailLength:I

    int-to-long v1, v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0

    :cond_1
    return-object v1

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/util/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 3

    const-string v0, "Orientation"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isThumbnailCompressed()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget v0, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetOrientation()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orientation"

    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rotate(I)V
    .locals 6

    .line 1
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    const/4 v0, 0x1

    const-string v1, "Orientation"

    .line 5
    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/util/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 8
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 10
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_0

    const/4 v4, 0x4

    :cond_0
    add-int/2addr v0, v4

    .line 12
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 13
    :cond_1
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 15
    div-int/lit8 p1, p1, 0x5a

    add-int/2addr v0, p1

    rem-int/2addr v0, v5

    if-gez v0, :cond_2

    const/4 v4, 0x4

    :cond_2
    add-int/2addr v0, v4

    .line 17
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 22
    :cond_3
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "degree should be a multiple of 90"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveAttributes()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/util/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/dcloud/common/util/ExifInterface;->mModified:Z

    .line 15
    invoke-virtual {p0}, Lio/dcloud/common/util/ExifInterface;->getThumbnail()[B

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "temp"

    const-string v3, "tmp"

    .line 22
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/16 v6, 0x15

    if-eqz v3, :cond_2

    .line 24
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_3

    .line 29
    iget-object v3, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 30
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    goto :goto_1

    :cond_3
    move-object v3, v1

    .line 33
    :goto_1
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 34
    :try_start_2
    invoke-static {v3, v7}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 38
    invoke-static {v3}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v7}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v3, 0x0

    .line 49
    :try_start_3
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :try_start_4
    iget-object v8, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 51
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :cond_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_5

    .line 56
    iget-object v8, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v9, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v8, v4, v5, v9}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 57
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_5
    move-object v8, v1

    .line 60
    :goto_2
    :try_start_5
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 61
    :try_start_6
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 62
    :try_start_7
    iget v11, p0, Lio/dcloud/common/util/ExifInterface;->mMimeType:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    .line 63
    invoke-direct {p0, v9, v10}, Lio/dcloud/common/util/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_6
    const/16 v12, 0xd

    if-ne v11, v12, :cond_7

    .line 65
    invoke-direct {p0, v9, v10}, Lio/dcloud/common/util/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_7
    const/16 v12, 0xe

    if-ne v11, v12, :cond_8

    .line 67
    invoke-direct {p0, v9, v10}, Lio/dcloud/common/util/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 94
    :cond_8
    :goto_3
    invoke-static {v9}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v10}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 102
    iput-object v1, p0, Lio/dcloud/common/util/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catch_0
    move-exception v1

    move-object v13, v8

    move-object v8, v1

    move-object v1, v13

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v10

    move-object v13, v10

    move-object v10, v1

    move-object v1, v8

    move-object v8, v13

    goto :goto_4

    :catch_2
    move-exception v9

    move-object v10, v1

    move-object v1, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_4

    :catch_3
    move-exception v8

    move-object v9, v1

    move-object v10, v9

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto/16 :goto_8

    :catch_4
    move-exception v7

    move-object v9, v1

    move-object v10, v9

    move-object v8, v7

    move-object v7, v10

    .line 103
    :goto_4
    :try_start_8
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 104
    :try_start_9
    iget-object v7, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 109
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_a

    .line 110
    iget-object v6, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 111
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_5

    .line 112
    :cond_9
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lio/dcloud/common/util/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_5
    move-object v1, v4

    .line 121
    :cond_a
    invoke-static {v11, v1}, Lio/dcloud/common/util/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 127
    :try_start_a
    invoke-static {v11}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to save new file"

    invoke-direct {v0, v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_2
    move-exception v0

    move-object v7, v11

    goto :goto_7

    :catch_5
    move-exception v3

    move-object v7, v11

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v3

    .line 131
    :goto_6
    :try_start_b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save new file. Original file is stored in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v3

    move-object v0, v3

    const/4 v3, 0x1

    .line 134
    :goto_7
    :try_start_c
    invoke-static {v7}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 136
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v9

    move-object v9, v1

    move-object v1, v10

    .line 139
    :goto_8
    invoke-static {v9}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    if-nez v3, :cond_b

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 144
    :cond_b
    throw v0

    :catchall_6
    move-exception v0

    move-object v1, v7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v1, v7

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object v3, v1

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v1

    .line 145
    :goto_9
    :try_start_d
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Failed to copy original file to temp file"

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_8
    move-exception v0

    .line 147
    :goto_a
    invoke-static {v3}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    invoke-static {v1}, Lio/dcloud/common/util/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    throw v0

    .line 150
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes on JPEG, PNG, or WebP formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitude(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 1
    :goto_0
    new-instance v1, Lio/dcloud/common/util/ExifInterface$Rational;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {v1, p1, p2}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v1}, Lio/dcloud/common/util/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSAltitude"

    invoke-virtual {p0, p2, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GPSAltitudeRef"

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "tag shouldn\'t be null"

    .line 257
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "DateTime"

    .line 1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " : "

    const-string v5, "Invalid value for "

    const-string v6, "ExifInterface"

    if-nez v3, :cond_0

    const-string v3, "DateTimeOriginal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DateTimeDigitized"

    .line 2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v2, :cond_3

    .line 4
    sget-object v3, Lio/dcloud/common/util/ExifInterface;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 5
    sget-object v7, Lio/dcloud/common/util/ExifInterface;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x13

    if-ne v8, v9, :cond_2

    if-nez v3, :cond_1

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_3

    const-string v3, "-"

    const-string v7, ":"

    .line 18
    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v3, "ISOSpeedRatings"

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 34
    sget-boolean v1, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "setAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 35
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v1, "PhotographicSensitivity"

    :cond_5
    const/4 v3, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    .line 41
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "GPSTimeStamp"

    .line 42
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 43
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 44
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_6

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/1,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    .line 49
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 52
    :cond_7
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 53
    new-instance v10, Lio/dcloud/common/util/ExifInterface$Rational;

    invoke-direct {v10, v8, v9}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v10}, Lio/dcloud/common/util/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 55
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 61
    :goto_3
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->EXIF_TAGS:[[Lio/dcloud/common/util/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v5, v8, :cond_1b

    const/4 v8, 0x4

    if-ne v5, v8, :cond_9

    .line 62
    iget-boolean v8, v0, Lio/dcloud/common/util/ExifInterface;->mHasThumbnail:Z

    if-nez v8, :cond_9

    goto/16 :goto_f

    .line 65
    :cond_9
    sget-object v8, Lio/dcloud/common/util/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/dcloud/common/util/ExifInterface$ExifTag;

    if-eqz v8, :cond_19

    if-nez v2, :cond_a

    .line 68
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 71
    :cond_a
    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 73
    iget v10, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v10, v11, :cond_12

    iget v10, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_b

    goto/16 :goto_7

    .line 75
    :cond_b
    iget v10, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->secondaryFormat:I

    if-eq v10, v12, :cond_d

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_c

    iget v10, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_d

    .line 77
    :cond_c
    iget v8, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_8

    .line 78
    :cond_d
    iget v10, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v7, :cond_11

    const/4 v11, 0x7

    if-eq v10, v11, :cond_11

    if-ne v10, v3, :cond_e

    goto/16 :goto_6

    .line 83
    :cond_e
    sget-boolean v10, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_19

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Given tag ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v11, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v13, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v12, :cond_f

    move-object v8, v14

    goto :goto_4

    .line 88
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v8, v11, v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (guess: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v11, v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_10

    goto :goto_5

    .line 90
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v11, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_11
    :goto_6
    move v8, v10

    goto :goto_8

    .line 92
    :cond_12
    :goto_7
    iget v8, v8, Lio/dcloud/common/util/ExifInterface$ExifTag;->primaryFormat:I

    :goto_8
    const-string v9, "/"

    const-string v10, ","

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const/4 v15, 0x1

    .line 187
    sget-boolean v3, Lio/dcloud/common/util/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_1a

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data format isn\'t one of expected formats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 189
    :pswitch_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 190
    array-length v9, v8

    new-array v9, v9, [D

    const/4 v10, 0x0

    .line 191
    :goto_9
    array-length v11, v8

    if-ge v10, v11, :cond_13

    .line 192
    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 194
    :cond_13
    iget-object v8, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v5

    iget-object v10, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 195
    invoke-static {v9, v10}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v9

    .line 196
    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 197
    :pswitch_2
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 198
    array-length v10, v8

    new-array v10, v10, [Lio/dcloud/common/util/ExifInterface$Rational;

    const/4 v11, 0x0

    .line 199
    :goto_a
    array-length v13, v8

    if-ge v11, v13, :cond_14

    .line 200
    aget-object v13, v8, v11

    invoke-virtual {v13, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 201
    new-instance v14, Lio/dcloud/common/util/ExifInterface$Rational;

    aget-object v15, v13, v4

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-long v3, v3

    aget-object v13, v13, v7

    move-object/from16 v16, v8

    .line 202
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    invoke-direct {v14, v3, v4, v7, v8}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(JJ)V

    aput-object v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_a

    .line 204
    :cond_14
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v4, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 205
    invoke-static {v10, v4}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createSRational([Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 206
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 207
    :pswitch_3
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 208
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v7, 0x0

    .line 209
    :goto_b
    array-length v8, v3

    if-ge v7, v8, :cond_15

    .line 210
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 212
    :cond_15
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 213
    invoke-static {v4, v7}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 214
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 229
    :pswitch_4
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 230
    array-length v4, v3

    new-array v4, v4, [Lio/dcloud/common/util/ExifInterface$Rational;

    const/4 v7, 0x0

    .line 231
    :goto_c
    array-length v8, v3

    if-ge v7, v8, :cond_16

    .line 232
    aget-object v8, v3, v7

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 233
    new-instance v10, Lio/dcloud/common/util/ExifInterface$Rational;

    const/4 v11, 0x0

    aget-object v13, v8, v11

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    double-to-long v13, v13

    const/4 v15, 0x1

    aget-object v8, v8, v15

    .line 234
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    invoke-direct {v10, v13, v14, v11, v12}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v12, -0x1

    goto :goto_c

    :cond_16
    const/4 v15, 0x1

    .line 236
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 237
    invoke-static {v4, v7}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createURational([Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 238
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_5
    const/4 v3, -0x1

    const/4 v15, 0x1

    .line 239
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 240
    array-length v4, v3

    new-array v4, v4, [J

    const/4 v7, 0x0

    .line 241
    :goto_d
    array-length v8, v3

    if-ge v7, v8, :cond_17

    .line 242
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 244
    :cond_17
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 245
    invoke-static {v4, v7}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 246
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_6
    const/4 v3, -0x1

    const/4 v15, 0x1

    .line 247
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 248
    array-length v4, v3

    new-array v4, v4, [I

    const/4 v7, 0x0

    .line 249
    :goto_e
    array-length v8, v3

    if-ge v7, v8, :cond_18

    .line 250
    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 252
    :cond_18
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    iget-object v7, v0, Lio/dcloud/common/util/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 253
    invoke-static {v4, v7}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 254
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_7
    const/4 v15, 0x1

    .line 255
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :pswitch_8
    const/4 v15, 0x1

    .line 256
    iget-object v3, v0, Lio/dcloud/common/util/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-static {v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_19
    :goto_f
    const/4 v15, 0x1

    :cond_1a
    :goto_10
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_1b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(Ljava/lang/Long;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    .line 2
    sget-object v2, Lio/dcloud/common/util/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "DateTime"

    invoke-virtual {p0, v2, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubSecTime"

    invoke-virtual {p0, v0, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSProcessingMethod"

    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/dcloud/common/util/ExifInterface;->setLatLong(DD)V

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->setAltitude(D)V

    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    .line 5
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lio/dcloud/common/util/ExifInterface$Rational;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(D)V

    invoke-virtual {v0}, Lio/dcloud/common/util/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSSpeed"

    .line 8
    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->sFormatterPrimary:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "\\s+"

    .line 13
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    aget-object v0, p1, v0

    const-string v1, "GPSDateStamp"

    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    const-string v0, "GPSTimeStamp"

    invoke-virtual {p0, v0, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLatLong(DD)V
    .locals 4

    const-string v0, " is not valid."

    const-wide v1, -0x3fa9800000000000L    # -90.0

    cmpg-double v3, p1, v1

    if-ltz v3, :cond_3

    const-wide v1, 0x4056800000000000L    # 90.0

    cmpl-double v3, p1, v1

    if-gtz v3, :cond_3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    const-wide v1, -0x3f99800000000000L    # -180.0

    cmpg-double v3, p3, v1

    if-ltz v3, :cond_2

    const-wide v1, 0x4066800000000000L    # 180.0

    cmpl-double v3, p3, v1

    if-gtz v3, :cond_2

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    const-string v2, "N"

    goto :goto_0

    :cond_0
    const-string v2, "S"

    :goto_0
    const-string v3, "GPSLatitudeRef"

    .line 7
    invoke-virtual {p0, v3, v2}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLatitude"

    invoke-virtual {p0, p2, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-double p1, p3, v0

    if-ltz p1, :cond_1

    const-string p1, "E"

    goto :goto_1

    :cond_1
    const-string p1, "W"

    :goto_1
    const-string p2, "GPSLongitudeRef"

    .line 9
    invoke-virtual {p0, p2, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSLongitude"

    invoke-virtual {p0, p2, p1}, Lio/dcloud/common/util/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longitude value "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Latitude value "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
