.class public Lcom/taobao/weex/common/WXRefreshData;
.super Ljava/lang/Object;
.source "WXRefreshData.java"


# instance fields
.field public data:Ljava/lang/String;

.field public isDirty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "isDirty"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    .line 29
    iput-boolean p2, p0, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    return-void
.end method
