.class Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 716
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 717
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "{discovering:%b,available:%b}"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 718
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 719
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    iget-boolean v5, v5, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v5, 0xc

    if-ne p1, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 720
    :cond_1
    iget-object p2, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    iget-object p2, p2, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->STATUS_ACTION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 721
    iget-object p1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    invoke-static {}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->access$700()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter$1;->this$0:Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;

    iget-boolean v1, v1, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->isSearchBTDevice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lio/dcloud/feature/bluetooth/BluetoothBaseAdapter;->execJsCallback(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
