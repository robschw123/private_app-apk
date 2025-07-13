.class public interface abstract Lcom/taobao/weex/ui/IExternalComponentGetter;
.super Ljava/lang/Object;
.source "IExternalComponentGetter.java"


# virtual methods
.method public abstract getExternalComponentClass(Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "instance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKInstance;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end method
