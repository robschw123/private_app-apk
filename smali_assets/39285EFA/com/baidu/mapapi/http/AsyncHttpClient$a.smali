.class abstract Lcom/baidu/mapapi/http/AsyncHttpClient$a;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/http/a;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/baidu/mapapi/http/AsyncHttpClient$a;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/baidu/mapapi/http/AsyncHttpClient$a;->a()V

    return-void
.end method
