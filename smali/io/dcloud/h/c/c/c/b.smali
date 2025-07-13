.class public Lio/dcloud/h/c/c/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/c/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/h/c/c/c/b$a;

    invoke-direct {v0}, Lio/dcloud/h/c/c/c/b$a;-><init>()V

    sput-object v0, Lio/dcloud/h/c/c/c/b;->a:Ljava/util/List;

    .line 26
    new-instance v0, Lio/dcloud/h/c/c/c/b$b;

    invoke-direct {v0}, Lio/dcloud/h/c/c/c/b$b;-><init>()V

    sput-object v0, Lio/dcloud/h/c/c/c/b;->b:Ljava/util/Map;

    .line 52
    new-instance v0, Lio/dcloud/h/c/c/c/b$c;

    invoke-direct {v0}, Lio/dcloud/h/c/c/c/b$c;-><init>()V

    sput-object v0, Lio/dcloud/h/c/c/c/b;->c:Ljava/util/Map;

    .line 79
    new-instance v0, Lio/dcloud/h/c/c/c/b$d;

    invoke-direct {v0}, Lio/dcloud/h/c/c/c/b$d;-><init>()V

    sput-object v0, Lio/dcloud/h/c/c/c/b;->d:Ljava/util/List;

    .line 105
    new-instance v0, Lio/dcloud/h/c/c/c/b$e;

    invoke-direct {v0}, Lio/dcloud/h/c/c/c/b$e;-><init>()V

    sput-object v0, Lio/dcloud/h/c/c/c/b;->e:Ljava/util/List;

    .line 131
    new-instance v0, Lio/dcloud/h/c/c/c/b$f;

    invoke-direct {v0}, Lio/dcloud/h/c/c/c/b$f;-><init>()V

    sput-object v0, Lio/dcloud/h/c/c/c/b;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/dcloud/h/c/c/c/b;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/dcloud/h/c/c/c/b;->d()Z

    move-result v0

    return v0
.end method

.method private static c()Z
    .locals 1

    :try_start_0
    const-string v0, "io.dcloud.common.DHInterface.IntlCallback"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static d()Z
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/h/c/c/b/d/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/dcloud/h/c/c/b/d/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
