.class public Lcom/baidu/platform/comapi/bmsdk/BmLayer;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmLayer.java"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeCreate()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    .line 9
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c:Z

    return-void
.end method

.method private static native nativeCreate()J
.end method


# virtual methods
.method public a(III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
