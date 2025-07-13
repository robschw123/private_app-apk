.class public Lcom/taobao/weex/common/WXImageStrategy;
.super Ljava/lang/Object;
.source "WXImageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXImageStrategy$ImageListener;
    }
.end annotation


# instance fields
.field public blurRadius:I

.field imageListener:Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

.field public instanceId:Ljava/lang/String;

.field isAutoCompression:Z

.field public isClipping:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isSharpen:Z

.field public placeHolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/taobao/weex/common/WXImageStrategy;->isAutoCompression:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/taobao/weex/common/WXImageStrategy;->isAutoCompression:Z

    .line 66
    iput-object p1, p0, Lcom/taobao/weex/common/WXImageStrategy;->instanceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageListener()Lcom/taobao/weex/common/WXImageStrategy$ImageListener;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/common/WXImageStrategy;->imageListener:Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    return-object v0
.end method

.method public isAutoCompression()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/taobao/weex/common/WXImageStrategy;->isAutoCompression:Z

    return v0
.end method

.method public setAutoCompression(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoCompression"
        }
    .end annotation

    .line 89
    iput-boolean p1, p0, Lcom/taobao/weex/common/WXImageStrategy;->isAutoCompression:Z

    return-void
.end method

.method public setImageListener(Lcom/taobao/weex/common/WXImageStrategy$ImageListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageListener"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/common/WXImageStrategy;->imageListener:Lcom/taobao/weex/common/WXImageStrategy$ImageListener;

    return-void
.end method
