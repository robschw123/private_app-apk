.class Lio/dcloud/e/c/h/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/c/h/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/c/h/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/e/c/h/b$a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->getRealHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/e/c/h/b$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/e/c/h/b$a;->b:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "commitTid"

    .line 14
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    return v2
.end method

.method public onNoOnePicked()V
    .locals 0

    return-void
.end method

.method public onOneSelected(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)V
    .locals 0

    return-void
.end method
