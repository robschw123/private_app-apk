.class public Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.super Ljava/lang/Object;
.source "BluetoothBaseAdapter.java"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;
    }
.end annotation


# static fields
.field private static CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String; = "callback_adapter_status_changed"

.field private static CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String; = "callback_blecharacteristicvaluechange"

.field private static CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String; = "callback_connection_status_change"

.field static CALLBACK_DEVICE_FOUND:Ljava/lang/String; = "callback_device_found"

.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"


# instance fields
.field STATUS_ACTION:Ljava/lang/String;

.field final _JS_FUNCTION:Ljava/lang/String;

.field allowDuplicatesDevice:Z

.field private bleConnected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;>;"
        }
    .end annotation
.end field

.field private createGatt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothGatt;",
            ">;"
        }
    .end annotation
.end field

.field private gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

.field private getDeviceRSSICallback:Ljava/lang/String;

.field private getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

.field isInit:Z

.field isSearchBTDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->allowDuplicatesDevice:Z

    .line 40
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 42
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    const-string v0, "{code:%d,message:\'%s\'}"

    .line 44
    iput-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->_JS_FUNCTION:Ljava/lang/String;

    const-string v0, "io.dcloud.bluetooth.sendsearch"

    .line 46
    iput-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->STATUS_ACTION:Ljava/lang/String;

    .line 713
    new-instance v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;-><init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)V

    iput-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Lio/dcloud/common/DHInterface/IWebview;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p0
.end method

.method static synthetic access$502(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Lio/dcloud/common/DHInterface/IWebview;)Lio/dcloud/common/DHInterface/IWebview;
    .locals 0

    .line 34
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1
.end method

.method static synthetic access$600(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSICallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSICallback:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bArray"
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 557
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 558
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "callbackid",
            "i",
            "s",
            "error"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 492
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    const-string p3, "{code:%d,message:\'%s\'}"

    invoke-static {p3, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p5

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method private getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceid"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 170
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    .line 172
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public static hexToByte(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 546
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 547
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 548
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 549
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method varargs checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "callbackid",
            "param"
        }
    .end annotation

    .line 600
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    .line 601
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v7, 0x271d

    .line 602
    sget v9, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v8, "invalid data,please check parameters"

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public closeBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 341
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    new-array p2, v0, [Ljava/lang/String;

    aput-object v1, p2, v2

    .line 343
    invoke-virtual {p0, p1, v5, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 345
    :cond_0
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_4

    .line 346
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-nez p2, :cond_1

    const/16 v6, 0x2714

    .line 347
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "no connection"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 350
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 351
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0

    .line 352
    :cond_2
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 353
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 355
    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v7, "ok"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/16 v6, 0x2710

    .line 357
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "not init"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public closeBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 100
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v4, 0x2719

    .line 101
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "system not support"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/16 v4, 0x271a

    .line 104
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "unsupport"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 106
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    const/16 v4, 0x2711

    .line 107
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not available"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 110
    :cond_2
    iput-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 111
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 112
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 114
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 115
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .line 117
    :cond_3
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 119
    :cond_4
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    if-eqz p2, :cond_5

    .line 120
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_5
    const/4 v4, 0x0

    .line 121
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v5, "ok"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public createBLEConnection(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    .line 207
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "deviceId"

    .line 208
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timeout"

    .line 209
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v0

    .line 210
    invoke-virtual {p0, p1, v7, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 212
    :cond_0
    iget-boolean v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v1, :cond_5

    .line 213
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 214
    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    .line 215
    :cond_1
    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    .line 217
    :cond_2
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 218
    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v4, -0x1

    const-string v5, "already connect"

    .line 219
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_3
    const-string v5, ""

    .line 222
    invoke-direct {p0, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 223
    invoke-virtual {v5, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    .line 227
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    const/4 v8, 0x2

    invoke-virtual {v1, v5, v0, v6, v8}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    invoke-virtual {v1, v5, v0, v6}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 231
    :goto_0
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->createGatt:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_6

    .line 234
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 235
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/16 v4, 0x2712

    .line 240
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no device"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x2710

    .line 243
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :catch_1
    :cond_6
    :goto_1
    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pAppid"
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 77
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_2
    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 87
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 88
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    .line 90
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_1

    .line 93
    :cond_3
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_4
    return-void
.end method

.method protected execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "msg",
            "keepCallback"
        }
    .end annotation

    const/4 v0, 0x1

    .line 620
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected execJsCallback(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "msg",
            "keepCallback",
            "isResultOk"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 613
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 614
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p4, :cond_1

    sget v1, Lio/dcloud/common/util/JSUtil;->OK:I

    goto :goto_1

    :cond_1
    sget v1, Lio/dcloud/common/util/JSUtil;->ERROR:I

    :goto_1
    move v5, v1

    const/4 v6, 0x1

    move-object v4, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pArgs"
        }
    .end annotation

    .line 626
    :try_start_0
    check-cast p1, Landroid/bluetooth/BluetoothGatt;

    .line 627
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 634
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 635
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 636
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/dcloud/common/DHInterface/IWebview;

    .line 637
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 638
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    const/4 v2, 0x7

    .line 639
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v1

    .line 640
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 641
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 643
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/16 v6, 0x271c

    const-string v7, "operate time out"

    .line 644
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    .line 645
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public getBLEDeviceCharacteristics(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 363
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "deviceId"

    .line 364
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "serviceId"

    .line 365
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v0

    aput-object p2, v4, v1

    .line 366
    invoke-virtual {p0, p1, v3, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 368
    :cond_0
    iget-boolean v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v4, :cond_9

    .line 369
    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v4, :cond_8

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 370
    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGatt;

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 v4, 0x2714

    .line 372
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no service"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p2

    .line 376
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 377
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 378
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v6, 0x0

    .line 381
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, "uuid"

    .line 382
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 384
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    const-string v8, "read"

    and-int/lit8 v9, v5, 0x2

    if-lez v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 385
    :goto_1
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    and-int/lit8 v8, v5, 0x8

    if-gtz v8, :cond_4

    and-int/lit8 v8, v5, 0x4

    if-lez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    :goto_3
    const-string v9, "write"

    .line 388
    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "notify"

    and-int/lit8 v9, v5, 0x10

    if-lez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    .line 389
    :goto_4
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "indicate"

    and-int/lit8 v5, v5, 0x20

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    .line 390
    :goto_5
    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "properties"

    .line 391
    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-object v6, v7

    :catch_1
    move-object v7, v6

    .line 394
    :goto_6
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    new-array p2, v1, [Ljava/lang/Object;

    .line 396
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "{\'characteristics\':%s}"

    invoke-static {v0, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_7

    :cond_8
    const/16 v4, 0x2714

    .line 398
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no connection"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_7

    :cond_9
    const/16 v4, 0x2710

    .line 401
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_7
    return-void
.end method

.method public getBLEDeviceRSSI(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x1

    .line 288
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 289
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 290
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-nez p2, :cond_0

    const/16 v6, 0x2710

    .line 291
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "not init"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_0
    new-array p2, v0, [Ljava/lang/String;

    aput-object v1, p2, v2

    .line 294
    invoke-virtual {p0, p1, v5, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 297
    :cond_1
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 298
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_2

    const/16 v6, 0x2714

    .line 300
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "no service"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 302
    :cond_2
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSIWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 303
    iput-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getDeviceRSSICallback:Ljava/lang/String;

    .line 304
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    goto :goto_0

    :cond_3
    const/16 v6, 0x2714

    .line 307
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "no connection"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public getBLEDeviceServices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    new-array p2, v0, [Ljava/lang/String;

    aput-object v1, p2, v2

    .line 408
    invoke-virtual {p0, p1, v5, p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 410
    :cond_0
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_4

    .line 411
    invoke-direct {p0, v1}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 413
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    .line 414
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 415
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 416
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "uuid"

    .line 418
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "isPrimary"

    .line 419
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :catch_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    new-array p2, v0, [Ljava/lang/Object;

    .line 424
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "{\'services\':%s}"

    invoke-static {v0, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v5

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_2

    :cond_3
    const/16 v6, 0x2714

    .line 426
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "no connection"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_2

    :cond_4
    const/16 v6, 0x2710

    .line 429
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "not init"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public getBluetoothAdapterState(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 128
    iget-boolean v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "{discovering:%b,available:true}"

    invoke-static {v0, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x2710

    .line 130
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public getBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    return-void
.end method

.method public getConnectedBluetoothDevices(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 177
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "services"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 178
    iget-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz p2, :cond_2

    .line 179
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "bluetooth"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    if-eqz p2, :cond_3

    const/4 v2, 0x7

    .line 181
    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object p2

    .line 182
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 183
    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 185
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 186
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 187
    iget-object v6, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "name"

    .line 188
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "deviceId"

    .line 189
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "{devices:%s}"

    invoke-static {v0, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_1

    :cond_2
    const/16 v4, 0x2710

    .line 199
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public notifyBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 436
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 437
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "serviceId"

    .line 438
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "deviceId"

    .line 439
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 440
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "state"

    .line 441
    invoke-virtual {p2, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v0

    aput-object v4, v6, v1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    .line 442
    invoke-virtual {p0, p1, v3, v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v0, :cond_8

    .line 446
    invoke-direct {p0, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 448
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 451
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v4, 0x2715

    .line 453
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no characteristic"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 456
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 458
    sget-object v4, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_5

    if-nez p2, :cond_2

    .line 461
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 462
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result p2

    const/16 v2, 0x20

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_3

    .line 466
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 467
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 470
    :cond_3
    sget-object p2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 471
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    :goto_0
    if-eqz v1, :cond_4

    const/4 v4, 0x0

    .line 479
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v5, "ok"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x271b

    .line 481
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "notify fail"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x2718

    .line 475
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no descriptor"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_6
    const/16 v4, 0x2714

    .line 483
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no service"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_7
    const/16 v4, 0x2714

    .line 485
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no connection"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    :cond_8
    const/16 v4, 0x2710

    .line 488
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public onBLECharacteristicValueChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    .line 503
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 504
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_BLECHARACTERISTIC_VALUE_CHANGE:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBLEConnectionStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    .line 509
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 510
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_CONNECTION_STATUS_CHANGED:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onBluetoothAdapterStateChange(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    .line 154
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_ADAPTER_STATUS_CHANGED:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v2, Landroid/content/IntentFilter;

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->STATUS_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bluetoothStatuReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onBluetoothDeviceFound(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    .line 135
    sget-object v0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getStringIWebviewHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 136
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->callbacks:Ljava/util/Map;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public openBluetoothAdapter(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 59
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v4, 0x2719

    .line 60
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "system not support"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/16 v4, 0x271a

    .line 63
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "unsupport"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v4, 0x2711

    .line 66
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not available"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 69
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    .line 71
    new-instance p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;-><init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;)V

    iput-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->gattCallback:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$BTBluetoothGattCallback;

    const/4 v4, 0x0

    .line 72
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v5, "ok"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public readBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 516
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "serviceId"

    .line 517
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "deviceId"

    .line 518
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 519
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v0

    aput-object v4, v5, v1

    const/4 v0, 0x2

    aput-object p2, v5, v0

    .line 520
    invoke-virtual {p0, p1, v3, v5}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v0, :cond_4

    .line 523
    invoke-direct {p0, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 525
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 527
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 v4, 0x2715

    .line 529
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no characteristic"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 532
    :cond_1
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    .line 533
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v5, "ok"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x2717

    .line 535
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "property not support"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x2714

    .line 539
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no connection"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x2710

    .line 541
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setBLEMTU(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deviceId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 250
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 251
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v3, "mtu"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 252
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    const/16 v6, 0x2714

    .line 253
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "not support"

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 256
    :cond_0
    iget-boolean v3, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-nez v3, :cond_1

    const/16 v6, 0x2710

    .line 257
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "not init"

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    aput-object p2, v3, v0

    .line 260
    invoke-virtual {p0, p1, v9, v3}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 263
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x16

    if-le p2, v0, :cond_5

    const/16 v0, 0x200

    if-gt p2, v0, :cond_5

    .line 265
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->bleConnected:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3

    .line 268
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    const/4 v6, 0x0

    const-string v7, "ok"

    .line 269
    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/16 v6, 0x2714

    const-string v7, "no service"

    .line 271
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/16 v6, 0x2714

    const-string v7, "no connection"

    .line 274
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/16 v6, 0x271d

    const-string v7, "invalid data"

    .line 277
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v6, 0x271d

    .line 280
    sget v8, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v7, "parameter.mtu should be Number"

    move-object v3, p0

    move-object v4, p1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public startBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    return-void
.end method

.method public stopBluetoothDevicesDiscovery(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    return-void
.end method

.method public writeBLECharacteristicValue(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pwebview",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 568
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "serviceId"

    .line 569
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "deviceId"

    .line 570
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristicId"

    .line 571
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    .line 572
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v0

    aput-object v4, v6, v1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object p2, v6, v0

    .line 573
    invoke-virtual {p0, p1, v3, v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->checkNull(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 575
    :cond_0
    invoke-static {p2}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->hexToByte(Ljava/lang/String;)[B

    move-result-object p2

    .line 576
    iget-boolean v0, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isInit:Z

    if-eqz v0, :cond_4

    .line 577
    invoke-direct {p0, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->getBluetoothGatt(Ljava/lang/String;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 579
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 581
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v4, 0x2715

    .line 583
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no characteristic"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    .line 586
    :cond_1
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 587
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    .line 588
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const-string v5, "ok"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x2717

    .line 590
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "property not support"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x2714

    .line 594
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "no connection"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/16 v4, 0x2710

    .line 596
    sget v6, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v5, "not init"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method
