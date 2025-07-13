.class public interface abstract Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;
.super Ljava/lang/Object;
.source "WXDCWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDCMessageListener"
.end annotation


# virtual methods
.method public abstract onMessage(Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation
.end method
