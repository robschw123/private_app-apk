.class Lcom/baidu/mapsdkplatform/comapi/commonutils/b$c;
.super Ljava/lang/Object;
.source "BMapSDKLogStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/commonutils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/baidu/mapsdkplatform/comapi/commonutils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;-><init>(Lcom/baidu/mapsdkplatform/comapi/commonutils/c;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    return-void
.end method

.method static synthetic a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;
    .locals 1

    .line 72
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    return-object v0
.end method
