.class public Lcom/taobao/weex/common/WXJSService;
.super Ljava/lang/Object;
.source "WXJSService.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXObject;


# instance fields
.field private name:Ljava/lang/String;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private script:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/common/WXJSService;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSService;->options:Ljava/util/Map;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSService;->script:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSService;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSService;->options:Ljava/util/Map;

    return-void
.end method

.method public setScript(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "script"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSService;->script:Ljava/lang/String;

    return-void
.end method
