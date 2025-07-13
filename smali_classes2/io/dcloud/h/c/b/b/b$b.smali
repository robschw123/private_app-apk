.class Lio/dcloud/h/c/b/b/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lio/dcloud/h/c/b/b/b$c;

.field final synthetic b:Lio/dcloud/h/c/b/b/b;


# direct methods
.method public constructor <init>(Lio/dcloud/h/c/b/b/b;Lio/dcloud/h/c/b/b/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$b;->b:Lio/dcloud/h/c/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    array-length p1, p3

    if-lez p1, :cond_1

    .line 3
    aget-object p1, p3, v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Resp"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Class;

    const-string v0, "getType"

    invoke-virtual {p2, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x13

    if-ne p2, p3, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "extMsg"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "isEnded"

    .line 11
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string p1, "adpid"

    .line 12
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 16
    :goto_0
    iget-object p2, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/h/c/b/b/b$c;->p()V

    .line 18
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_0

    .line 20
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onVideoPlayEnd()V

    .line 21
    :cond_0
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClose()V

    .line 27
    :cond_1
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/h/c/b/b/b$c;->w()V

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 29
    aget-object p2, p3, v1

    if-ne p1, p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
