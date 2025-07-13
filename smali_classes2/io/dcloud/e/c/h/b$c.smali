.class Lio/dcloud/e/c/h/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/c/h/b;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;ILjava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IApp;ILjava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iput p2, p0, Lio/dcloud/e/c/h/b$c;->b:I

    iput-object p3, p0, Lio/dcloud/e/c/h/b$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/e/c/h/b$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/e/c/h/b$c;->e:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded;charset=utf-8"

    .line 3
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "start_statistics_data"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 5
    iget-object v0, p0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v0, v5}, Lio/dcloud/e/c/h/b;->a(Lio/dcloud/common/DHInterface/IApp;Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v0

    .line 6
    iget v1, p0, Lio/dcloud/e/c/h/b$c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gudi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "paid"

    .line 9
    :try_start_0
    iget-object v1, p0, Lio/dcloud/e/c/h/b$c;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "urv"

    .line 10
    :try_start_1
    iget-object v1, p0, Lio/dcloud/e/c/h/b$c;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    :goto_1
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "null"

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 18
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lio/dcloud/common/util/ZipUtils;->zipString(Ljava/lang/String;)[B

    move-result-object v0

    .line 20
    iget-object v2, p0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getSK()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getSIV()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const/4 v2, 0x2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :try_start_2
    const-string v2, "utf-8"

    .line 24
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 28
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v7, "YHx8eHsyJyd7OSZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCd7fGl6fH14J346"

    invoke-direct {v0, v7, v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v7, "YHx8eHsyJyd7OiZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCd7fGl6fH14J346"

    invoke-direct {v0, v7, v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v7, "YHx8eHsyJydqezkmbGtkZ31sJmZtfCZrZidgfHx4J2tpeyd+Og=="

    invoke-direct {v0, v7, v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {}, Lio/dcloud/common/util/hostpicker/HostPicker;->getInstance()Lio/dcloud/common/util/hostpicker/HostPicker;

    move-result-object v7

    iget-object v0, p0, Lio/dcloud/e/c/h/b$c;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lio/dcloud/e/c/h/b$c$a;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/dcloud/e/c/h/b$c$a;-><init>(Lio/dcloud/e/c/h/b$c;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Landroid/content/SharedPreferences;)V

    const-string v0, "StartUp"

    invoke-virtual {v7, v8, v6, v0, v9}, Lio/dcloud/common/util/hostpicker/HostPicker;->pickSuitHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;)V

    :cond_2
    return-void
.end method
