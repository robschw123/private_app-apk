.class public Lio/dcloud/js/map/MapInitImpl$SDKReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapInitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/js/map/MapInitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SDKReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/MapInitImpl;


# direct methods
.method public constructor <init>(Lio/dcloud/js/map/MapInitImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lio/dcloud/js/map/MapInitImpl$SDKReceiver;->this$0:Lio/dcloud/js/map/MapInitImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .line 84
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lio/dcloud/js/map/MapInitImpl$SDKReceiver;->this$0:Lio/dcloud/js/map/MapInitImpl;

    iget-boolean v0, v0, Lio/dcloud/js/map/MapInitImpl;->isShowKeyDialog:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "permission check error"

    if-ne p2, v0, :cond_0

    const-string p2, "1"

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lio/dcloud/js/map/MapInitImpl$SDKReceiver;->this$0:Lio/dcloud/js/map/MapInitImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lio/dcloud/js/map/MapInitImpl;->isShowKeyDialog:Z

    .line 88
    sput-boolean p2, Lio/dcloud/js/map/MapInitImpl;->isKeyError:Z

    :cond_0
    return-void
.end method
