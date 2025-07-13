.class public Lio/dcloud/feature/uniapp/common/UniException;
.super Ljava/lang/Exception;
.source "UniException.java"


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

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
