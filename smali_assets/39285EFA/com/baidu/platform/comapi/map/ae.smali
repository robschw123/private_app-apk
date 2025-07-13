.class public Lcom/baidu/platform/comapi/map/ae;
.super Ljava/lang/Object;
.source "OverlayItemIdHolder.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/platform/comapi/map/ae;->a:J

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 10
    sget-wide v0, Lcom/baidu/platform/comapi/map/ae;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/baidu/platform/comapi/map/ae;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
