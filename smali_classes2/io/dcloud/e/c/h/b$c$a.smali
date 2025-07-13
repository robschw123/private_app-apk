.class Lio/dcloud/e/c/h/b$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/c/h/b$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Landroid/content/SharedPreferences;

.field final synthetic e:Lio/dcloud/e/c/h/b$c;


# direct methods
.method constructor <init>(Lio/dcloud/e/c/h/b$c;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/c/h/b$c$a;->e:Lio/dcloud/e/c/h/b$c;

    iput-object p2, p0, Lio/dcloud/e/c/h/b$c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/e/c/h/b$c$a;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lio/dcloud/e/c/h/b$c$a;->c:Ljava/util/HashMap;

    iput-object p5, p0, Lio/dcloud/e/c/h/b$c$a;->d:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->getRealHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/e/c/h/b$c$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/e/c/h/b$c$a;->b:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZZ)[B

    move-result-object p1

    if-nez p1, :cond_0

    return v2

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/e/c/h/b$c$a;->e:Lio/dcloud/e/c/h/b$c;

    iget-object v0, v0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pdr"

    const-string v4, "report_uni_verify_GYUID"

    const-string v5, ""

    invoke-static {v0, v1, v4, v5}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/e/c/h/b$c$a;->c:Ljava/util/HashMap;

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lio/dcloud/e/c/h/b$c$a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "commit_app_list_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 12
    :cond_1
    iget-object v0, p0, Lio/dcloud/e/c/h/b$c$a;->e:Lio/dcloud/e/c/h/b$c;

    iget-object v1, v0, Lio/dcloud/e/c/h/b$c;->e:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    iget-object v5, v0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    aput-object v5, v4, v2

    iget-object v0, v0, Lio/dcloud/e/c/h/b$c;->c:Ljava/lang/String;

    aput-object v0, v4, v3

    const/4 v0, 0x2

    aput-object p1, v4, v0

    .line 14
    invoke-interface {v1, v3, v4}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v3
.end method

.method public onNoOnePicked()V
    .locals 0

    return-void
.end method

.method public onOneSelected(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)V
    .locals 0

    return-void
.end method
