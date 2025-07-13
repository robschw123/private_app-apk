.class public Lcom/taobao/weex/utils/WXViewToImageUtil;
.super Ljava/lang/Object;
.source "WXViewToImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;
    }
.end annotation


# static fields
.field public static mBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "imageView",
            "width",
            "backgroundColor",
            "mOnImageSavedCallback"
        }
    .end annotation

    .line 53
    sput p2, Lcom/taobao/weex/utils/WXViewToImageUtil;->mBackgroundColor:I

    .line 56
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXWorkThreadManager()Lcom/taobao/weex/common/WXWorkThreadManager;

    move-result-object p2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/weex/utils/WXViewToImageUtil$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/taobao/weex/utils/WXViewToImageUtil$1;-><init>(Landroid/view/View;ILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Lcom/taobao/weex/common/WXWorkThreadManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getBitmapFromImageView(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "view",
            "width"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 142
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    .line 143
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 142
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v0, p1, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmapToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "bitmap",
            "mOnImageSavedCallback"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Weex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 102
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 103
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p2, :cond_1

    const-string v3, "Android IOException"

    .line 111
    invoke-interface {p2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveFailed(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    if-eqz p2, :cond_2

    const-string v3, "Image creation failed due to system reason"

    .line 107
    invoke-interface {p2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;->onSaveFailed(Ljava/lang/String;)V

    .line 108
    :cond_2
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 117
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    .line 117
    invoke-static {p1, p2, v1, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 124
    :goto_1
    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
