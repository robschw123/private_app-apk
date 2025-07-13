.class public interface abstract Lcom/taobao/weex/ui/IExternalModuleGetter;
.super Ljava/lang/Object;
.source "IExternalModuleGetter.java"


# virtual methods
.method public abstract getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/common/WXModule;",
            ">;"
        }
    .end annotation
.end method
