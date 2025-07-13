.class public interface abstract Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEventReporterDelegate"
.end annotation


# virtual methods
.method public abstract httpExchangeFailed(Ljava/io/IOException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method

.method public abstract interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation
.end method

.method public abstract postConnect()V
.end method

.method public abstract preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "connection",
            "body"
        }
    .end annotation
.end method
