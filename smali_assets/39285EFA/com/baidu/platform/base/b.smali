.class Lcom/baidu/platform/base/b;
.super Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;
.source "BaseSearch.java"


# instance fields
.field final synthetic a:Lcom/baidu/platform/base/d;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/baidu/platform/base/a;


# direct methods
.method constructor <init>(Lcom/baidu/platform/base/a;Lcom/baidu/platform/base/d;Ljava/lang/Object;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/baidu/platform/base/b;->c:Lcom/baidu/platform/base/a;

    iput-object p2, p0, Lcom/baidu/platform/base/b;->a:Lcom/baidu/platform/base/d;

    iput-object p3, p0, Lcom/baidu/platform/base/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/baidu/platform/base/b;->c:Lcom/baidu/platform/base/a;

    iget-object v1, p0, Lcom/baidu/platform/base/b;->a:Lcom/baidu/platform/base/d;

    iget-object v2, p0, Lcom/baidu/platform/base/b;->b:Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/platform/base/a;Lcom/baidu/mapapi/http/HttpClient$HttpStateError;Lcom/baidu/platform/base/d;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    .line 81
    iget-object v0, p0, Lcom/baidu/platform/base/b;->c:Lcom/baidu/platform/base/a;

    invoke-static {v0, p1}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/platform/base/a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/baidu/platform/base/b;->a:Lcom/baidu/platform/base/d;

    instance-of v0, v0, Lcom/baidu/platform/core/c/e;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/platform/base/b;->c:Lcom/baidu/platform/base/a;

    invoke-static {v0, p1}, Lcom/baidu/platform/base/a;->b(Lcom/baidu/platform/base/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 89
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 96
    :goto_1
    iget-object v2, p0, Lcom/baidu/platform/base/b;->c:Lcom/baidu/platform/base/a;

    iget-object v4, p0, Lcom/baidu/platform/base/b;->a:Lcom/baidu/platform/base/d;

    iget-object v5, p0, Lcom/baidu/platform/base/b;->b:Ljava/lang/Object;

    invoke-static {v2}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/platform/base/a;)Lcom/baidu/mapapi/http/AsyncHttpClient;

    move-result-object v6

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/baidu/platform/base/a;->a(Lcom/baidu/platform/base/a;Ljava/lang/String;Lcom/baidu/platform/base/d;Ljava/lang/Object;Lcom/baidu/mapapi/http/AsyncHttpClient;Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;)V

    return-void
.end method
