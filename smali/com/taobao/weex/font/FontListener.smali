.class public interface abstract Lcom/taobao/weex/font/FontListener;
.super Ljava/lang/Object;
.source "FontListener.java"


# virtual methods
.method public abstract onAddFontRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "fontFamily",
            "fontUrl"
        }
    .end annotation
.end method

.method public abstract onFontLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fontFamily",
            "fontUrl",
            "filePath"
        }
    .end annotation
.end method
