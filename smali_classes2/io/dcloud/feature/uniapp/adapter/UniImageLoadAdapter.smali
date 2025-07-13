.class public interface abstract Lio/dcloud/feature/uniapp/adapter/UniImageLoadAdapter;
.super Ljava/lang/Object;
.source "UniImageLoadAdapter.java"


# virtual methods
.method public abstract loadImageBitmap(Landroid/content/Context;Ljava/lang/String;IILio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "url",
            "width",
            "height",
            "call"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadImageBitmap(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "url",
            "call"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/uniapp/utils/bitmap/BitmapLoadCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
