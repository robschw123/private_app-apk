.class public interface abstract Lcom/taobao/weex/common/WXImageStrategy$ImageListener;
.super Ljava/lang/Object;
.source "WXImageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXImageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageListener"
.end annotation


# virtual methods
.method public abstract onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "imageView",
            "result",
            "extra"
        }
    .end annotation
.end method
