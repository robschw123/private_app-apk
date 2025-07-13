.class public Lcom/taobao/weex/common/WXException;
.super Lio/dcloud/feature/uniapp/common/UniException;
.source "WXException.java"


# static fields
.field private static final serialVersionUID:J = 0x64d570b7683a8e43L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/dcloud/feature/uniapp/common/UniException;-><init>(Ljava/lang/String;)V

    return-void
.end method
