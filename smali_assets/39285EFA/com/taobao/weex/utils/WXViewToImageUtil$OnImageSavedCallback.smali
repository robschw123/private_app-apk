.class public interface abstract Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXViewToImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageSavedCallback"
.end annotation


# virtual methods
.method public abstract onSaveFailed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDesc"
        }
    .end annotation
.end method

.method public abstract onSaveSucceed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method
