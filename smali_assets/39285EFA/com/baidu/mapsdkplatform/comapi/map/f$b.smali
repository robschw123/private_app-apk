.class Lcom/baidu/mapsdkplatform/comapi/map/f$b;
.super Ljava/lang/Object;
.source "CustomMapStyleLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/baidu/mapsdkplatform/comapi/map/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/f;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/g;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/map/f;

    return-void
.end method

.method static synthetic a()Lcom/baidu/mapsdkplatform/comapi/map/f;
    .locals 1

    .line 80
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/f$b;->a:Lcom/baidu/mapsdkplatform/comapi/map/f;

    return-object v0
.end method
