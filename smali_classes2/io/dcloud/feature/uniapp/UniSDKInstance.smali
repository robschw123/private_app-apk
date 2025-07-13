.class public Lio/dcloud/feature/uniapp/UniSDKInstance;
.super Lcom/taobao/weex/WXSDKInstance;
.source "UniSDKInstance.java"


# instance fields
.field private isCompilerWithUniapp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "originalContext"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method


# virtual methods
.method public isCompilerWithUniapp()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return v0
.end method

.method protected bridge synthetic newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/UniSDKInstance;->newNestedInstance()Lio/dcloud/feature/uniapp/UniSDKInstance;

    move-result-object v0

    return-object v0
.end method

.method protected newNestedInstance()Lio/dcloud/feature/uniapp/UniSDKInstance;
    .locals 2

    .line 46
    new-instance v0, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-object v1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setCompilerWithUniapp(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCompilerWithUniapp"
        }
    .end annotation

    .line 51
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method
