.class Lcom/baidu/platform/comapi/map/f$m;
.super Lcom/baidu/platform/comapi/map/f$b;
.source "GLRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic l:Lcom/baidu/platform/comapi/map/f;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/f;Z)V
    .locals 10

    .line 958
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$m;->l:Lcom/baidu/platform/comapi/map/f;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 959
    invoke-direct/range {v0 .. v9}, Lcom/baidu/platform/comapi/map/f$b;-><init>(Lcom/baidu/platform/comapi/map/f;IIIIIIII)V

    return-void
.end method
