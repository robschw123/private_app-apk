.class Lio/dcloud/h/c/d/a$a;
.super Lio/dcloud/h/c/c/f/c/e/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/d/a;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lio/dcloud/h/c/d/a;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/d/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    iput-boolean p2, p0, Lio/dcloud/h/c/d/a$a;->d:Z

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/c/e/a$b;-><init>(Lio/dcloud/h/c/c/f/c/e/a;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/e/a$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "action"

    const-string v3, ""

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "push"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v2, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    invoke-static {v2, v1}, Lio/dcloud/h/c/d/a;->a(Lio/dcloud/h/c/d/a;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_0
    const-string v3, "redPackage"

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    invoke-static {v2, v1}, Lio/dcloud/h/c/d/a;->b(Lio/dcloud/h/c/d/a;Lorg/json/JSONObject;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_8

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object v1, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/c/e/a;->t()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    iget-object v2, v2, Lio/dcloud/h/c/d/a;->C:Lio/dcloud/h/c/d/b;

    if-eqz v2, :cond_2

    const/16 v3, -0x1388

    .line 20
    :try_start_0
    invoke-interface {v2, p1}, Lio/dcloud/h/c/d/b;->a(Lorg/json/JSONObject;)V

    .line 21
    iget-object v2, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    iget-object v2, v2, Lio/dcloud/h/c/d/a;->C:Lio/dcloud/h/c/d/b;

    invoke-interface {v2}, Lio/dcloud/h/c/d/b;->b()Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    iget-object v2, v2, Lio/dcloud/h/c/d/a;->C:Lio/dcloud/h/c/d/b;

    invoke-interface {v2}, Lio/dcloud/h/c/d/b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    invoke-super {p0, v3, v0}, Lio/dcloud/h/c/c/f/c/e/a$b;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 29
    :cond_1
    iget-object v2, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    invoke-static {v2}, Lio/dcloud/h/c/d/a;->h(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/sdk/poly/base/utils/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 30
    invoke-super {p0, v3, v0}, Lio/dcloud/h/c/c/f/c/e/a$b;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 36
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    invoke-direct {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;-><init>()V

    invoke-virtual {v1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->height(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->width(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    invoke-static {v1, v0}, Lio/dcloud/h/c/d/a;->a(Lio/dcloud/h/c/d/a;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    .line 40
    :cond_3
    iget-boolean v0, p0, Lio/dcloud/h/c/d/a$a;->d:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/b/a;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "hw"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "cfgs"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_7

    .line 43
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x0

    .line 44
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 45
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "p"

    .line 46
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 55
    :cond_6
    :try_start_1
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :catch_1
    :cond_7
    invoke-super {p0, p1}, Lio/dcloud/h/c/c/f/c/e/a$b;->a(Lorg/json/JSONObject;)V

    return-void

    .line 63
    :cond_8
    :goto_2
    iget-object p1, p0, Lio/dcloud/h/c/d/a$a;->e:Lio/dcloud/h/c/d/a;

    const/16 v0, -0x1389

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/h/c/d/a;->a(Lio/dcloud/h/c/d/a;ILjava/lang/String;)V

    return-void
.end method
