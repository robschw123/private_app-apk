.class Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;
.super Ljava/lang/Object;
.source "BluetoothUnder21.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/bluetooth/BluetoothUnder21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTScanCallback"
.end annotation


# instance fields
.field private __JS__FUNCTION:Ljava/lang/String;

.field private scanList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/bluetooth/DCBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothUnder21;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "{devices:[%s]}"

    .line 120
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getScanList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/bluetooth/DCBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    return-object v0
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "device1",
            "rssi",
            "scanRecord"
        }
    .end annotation

    .line 128
    new-instance v0, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;

    invoke-direct {v0, p1, p3}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 129
    invoke-virtual {v0, p2}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->setRSSI(I)V

    .line 130
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    iget-boolean p2, p2, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->allowDuplicatesDevice:Z

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 131
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    sget-object v2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p3

    invoke-static {v3, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3, v1}, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 136
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->scanList:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->this$0:Lio/dcloud/feature/bluetooth/BluetoothUnder21;

    sget-object p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->CALLBACK_DEVICE_FOUND:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/bluetooth/BluetoothUnder21$BTScanCallback;->__JS__FUNCTION:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/dcloud/feature/bluetooth/DCBluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p3

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Lio/dcloud/feature/bluetooth/BluetoothUnder21;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
