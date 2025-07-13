.class public Lio/dcloud/feature/uniapp/utils/UniViewUtils;
.super Lcom/taobao/weex/utils/WXViewUtils;
.source "UniViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/taobao/weex/utils/WXViewUtils;-><init>()V

    return-void
.end method

.method public static getUniHeight(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lio/dcloud/feature/uniapp/utils/UniViewUtils;->getWeexHeight(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
