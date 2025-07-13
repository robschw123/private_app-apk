.class public Lcom/baidu/mapapi/common/AppTools;
.super Ljava/lang/Object;
.source "AppTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaiduMapToken()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/tools/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
