.class Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NOPEventReportDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;)V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$NOPEventReportDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public httpExchangeFailed(Ljava/io/IOException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    return-void
.end method

.method public interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    return-object p1
.end method

.method public postConnect()V
    .locals 0

    return-void
.end method

.method public preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 0
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

    return-void
.end method
