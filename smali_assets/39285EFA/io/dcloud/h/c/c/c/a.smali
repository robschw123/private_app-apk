.class public Lio/dcloud/h/c/c/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/c/c/a$a;,
        Lio/dcloud/h/c/c/c/a$b;
    }
.end annotation


# static fields
.field private static a:Lio/dcloud/h/c/c/c/a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UNIAPP_HostPicker_0817"

    .line 2
    iput-object v0, p0, Lio/dcloud/h/c/c/c/a;->b:Ljava/lang/String;

    const-string v0, "SP_LAST_SUIT_HOST_NAME_0817"

    .line 6
    iput-object v0, p0, Lio/dcloud/h/c/c/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lio/dcloud/h/c/c/c/a;
    .locals 2

    .line 39
    sget-object v0, Lio/dcloud/h/c/c/c/a;->a:Lio/dcloud/h/c/c/c/a;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lio/dcloud/h/c/c/c/a;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lio/dcloud/h/c/c/c/a;->a:Lio/dcloud/h/c/c/c/a;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lio/dcloud/h/c/c/c/a;

    invoke-direct {v1}, Lio/dcloud/h/c/c/c/a;-><init>()V

    sput-object v1, Lio/dcloud/h/c/c/c/a;->a:Lio/dcloud/h/c/c/c/a;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lio/dcloud/h/c/c/c/a;->a:Lio/dcloud/h/c/c/c/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/c/a$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_LAST_SUIT_HOST_NAME_0817"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "UNIAPP_HostPicker_0817"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    .line 3
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/c/c/a$a;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/h/c/c/c/a$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    iget-object v2, v1, Lio/dcloud/h/c/c/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    sget-object v2, Lio/dcloud/h/c/c/c/a$a$a;->b:Lio/dcloud/h/c/c/c/a$a$a;

    iput-object v2, v1, Lio/dcloud/h/c/c/c/a$a;->b:Lio/dcloud/h/c/c/c/a$a$a;

    goto :goto_0

    .line 19
    :cond_1
    sget-object v2, Lio/dcloud/h/c/c/c/a$a$a;->a:Lio/dcloud/h/c/c/c/a$a$a;

    iput-object v2, v1, Lio/dcloud/h/c/c/c/a$a;->b:Lio/dcloud/h/c/c/c/a$a$a;

    goto :goto_0

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error format host"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 37
    invoke-interface {p1, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/h/c/c/c/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/c/a$a;",
            ">;",
            "Ljava/lang/String;",
            "Lio/dcloud/h/c/c/c/a$b;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 46
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/h/c/c/c/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/h/c/c/c/a$a;

    .line 60
    invoke-interface {p4, v0}, Lio/dcloud/h/c/c/c/a$b;->b(Lio/dcloud/h/c/c/c/a$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object p2, v0, Lio/dcloud/h/c/c/c/a$a;->b:Lio/dcloud/h/c/c/c/a$a$a;

    sget-object v1, Lio/dcloud/h/c/c/c/a$a$a;->c:Lio/dcloud/h/c/c/c/a$a$a;

    if-eq p2, v1, :cond_1

    const/4 p2, 0x0

    const-string v1, "UNIAPP_HostPicker_0817"

    .line 65
    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_LAST_SUIT_HOST_NAME_0817"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, v0, Lio/dcloud/h/c/c/c/a$a;->a:Ljava/lang/String;

    .line 69
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :cond_1
    invoke-interface {p4, v0}, Lio/dcloud/h/c/c/c/a$b;->a(Lio/dcloud/h/c/c/c/a$a;)V

    return-void

    .line 80
    :cond_2
    invoke-interface {p4}, Lio/dcloud/h/c/c/c/a$b;->onNoOnePicked()V

    return-void

    .line 81
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "call initHosts first"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
