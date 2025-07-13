.class public Lio/dcloud/feature/bluetooth/DCBluetoothDevice;
.super Ljava/lang/Object;
.source "DCBluetoothDevice.java"


# static fields
.field public static final BASE_UUID:Landroid/os/ParcelUuid;

.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field private static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field private static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field public static final UUID_BYTES_128_BIT:I = 0x10

.field public static final UUID_BYTES_16_BIT:I = 0x2

.field public static final UUID_BYTES_32_BIT:I = 0x4


# instance fields
.field private RSSI:I

.field private advertisData:Ljava/lang/String;

.field private advertisServiceUUIDs:Lorg/json/JSONArray;

.field private deviceId:Ljava/lang/String;

.field private localName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private serviceData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00000000-0000-1000-8000-00805F9B34FB"

    .line 58
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->BASE_UUID:Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "device",
            "result"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setDeviceId(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseFromBytes([B)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/le/ScanResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setDeviceId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setRSSI(I)V

    .line 78
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisData(Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setLocalName(Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getServiceData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->map2Str(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setServiceData(Lorg/json/JSONObject;)V

    .line 85
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->list2Str(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 87
    :catch_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "name",
            "RSSI",
            "advertisData",
            "serviceData",
            "advertisServiceUUIDs"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    .line 330
    iput p3, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    .line 331
    iput-object p4, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    .line 332
    iput-object p5, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    .line 333
    iput-object p6, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bArray"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 102
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 103
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 106
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static concat([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 93
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 94
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private extractBytes([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scanRecord",
            "start",
            "length"
        }
    .end annotation

    .line 292
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 293
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private list2Str(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 310
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private map2Str(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 298
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 301
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method private parseFromBytes([B)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scanRecord"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 135
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, ""

    const/4 v10, 0x0

    move-object v11, v9

    const/4 v0, 0x0

    .line 138
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    .line 140
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v12, v0, -0x1

    add-int/lit8 v13, v1, 0x1

    .line 147
    aget-byte v0, p1, v1

    and-int/2addr v0, v2

    const/16 v1, 0x16

    const/16 v3, 0x21

    const/16 v4, 0x20

    const/4 v5, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 173
    :pswitch_0
    aget-byte v0, p1, v13

    goto/16 :goto_2

    .line 169
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    .line 170
    invoke-direct {p0, p1, v13, v12}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object v11, v0

    goto/16 :goto_2

    :pswitch_2
    const/16 v4, 0x10

    move-object v0, p0

    move-object v1, p1

    move v2, v13

    move v3, v12

    move-object v5, v6

    .line 164
    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseServiceUuid([BIIILjava/util/List;)I

    goto/16 :goto_2

    :pswitch_3
    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, v13

    move v3, v12

    move-object v5, v6

    .line 159
    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    :pswitch_4
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, v13

    move v3, v12

    move-object v5, v6

    .line 154
    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_2

    .line 150
    :pswitch_5
    aget-byte v0, p1, v13

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v13, 0x1

    .line 195
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v13

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 198
    invoke-direct {p0, p1, v13, v12}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v1

    .line 202
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_3

    .line 203
    array-length v3, v1

    if-le v3, v5, :cond_7

    .line 204
    array-length v3, v2

    array-length v4, v1

    add-int/2addr v3, v4

    sub-int/2addr v3, v5

    new-array v3, v3, [B

    .line 205
    array-length v4, v2

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    array-length v2, v2

    array-length v4, v1

    sub-int/2addr v4, v5

    invoke-static {v1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    invoke-virtual {v7, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {v7, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v5, 0x4

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_6

    const/16 v5, 0x10

    .line 185
    :cond_6
    :goto_1
    invoke-direct {p0, p1, v13, v5}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    add-int v1, v13, v5

    sub-int v2, v12, v5

    .line 189
    invoke-direct {p0, p1, v1, v2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v1

    .line 191
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int v0, v13, v12

    goto/16 :goto_0

    .line 221
    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_9

    const/4 v6, 0x0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_9
    :goto_4
    invoke-static {v11}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    move-object v9, v11

    :goto_5
    invoke-virtual {p0, v9}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setLocalName(Ljava/lang/String;)V

    .line 230
    :try_start_1
    invoke-direct {p0, v8}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->map2Str(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setServiceData(Lorg/json/JSONObject;)V

    .line 231
    invoke-direct {p0, v6}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->list2Str(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 233
    :catch_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V

    .line 235
    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_d

    new-array p1, v10, [B

    .line 237
    :goto_7
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_c

    .line 238
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 239
    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p1, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->concat([B[B)[B

    move-result-object p1

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 241
    :cond_c
    invoke-static {p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setAdvertisData(Ljava/lang/String;)V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseServiceUuid([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scanRecord",
            "currentPos",
            "dataLength",
            "uuidLength",
            "serviceUuids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 249
    invoke-direct {p0, p1, p2, p4}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->extractBytes([BII)[B

    move-result-object v0

    .line 251
    invoke-virtual {p0, v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p3, p4

    add-int/2addr p2, p4

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public getAdvertisData()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertisServiceUUIDs()Lorg/json/JSONArray;
    .locals 1

    .line 377
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRSSI()I
    .locals 1

    .line 353
    iget v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    return v0
.end method

.method public getServiceData()Lorg/json/JSONObject;
    .locals 1

    .line 369
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public parseUuidFrom([B)Landroid/os/ParcelUuid;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuidBytes"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 262
    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uuidBytes length invalid - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v1, :cond_2

    .line 269
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 271
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 272
    new-instance p1, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p1

    :cond_2
    const/4 v5, 0x1

    if-ne v0, v2, :cond_3

    .line 278
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 279
    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v4

    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_1

    .line 281
    :cond_3
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    .line 282
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    int-to-long v3, v0

    add-long/2addr v6, v3

    .line 283
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v6, v0

    const/4 v0, 0x3

    .line 284
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    add-long/2addr v0, v6

    .line 286
    :goto_1
    sget-object p1, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->BASE_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 287
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 288
    new-instance p1, Landroid/os/ParcelUuid;

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v2, v3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {p1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object p1

    .line 260
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uuidBytes cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdvertisData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advertisData"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    return-void
.end method

.method public setAdvertisServiceUUIDs(Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "advertisServiceUUIDs"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    .line 341
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localName"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->localName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setRSSI(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RSSI"
        }
    .end annotation

    .line 357
    iput p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    return-void
.end method

.method public setServiceData(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceData"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 386
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deviceId"

    .line 388
    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 389
    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "RSSI"

    .line 390
    iget v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->RSSI:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "localName"

    .line 391
    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "advertisServiceUUIDs"

    .line 392
    iget-object v2, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisServiceUUIDs:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->advertisData:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "advertisData"

    .line 394
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_0
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->serviceData:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v2, "serviceData"

    .line 396
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
