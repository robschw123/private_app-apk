.class public Lcom/baidu/location/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/e$g;,
        Lcom/baidu/location/c/e$d;,
        Lcom/baidu/location/c/e$c;,
        Lcom/baidu/location/c/e$a;,
        Lcom/baidu/location/c/e$b;,
        Lcom/baidu/location/c/e$f;,
        Lcom/baidu/location/c/e$h;,
        Lcom/baidu/location/c/e$e;
    }
.end annotation


# static fields
.field private static L:Ljava/lang/String; = null

.field private static N:D = 100.0

.field private static Q:F = -1.0f

.field public static a:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field private static e:Lcom/baidu/location/c/e; = null

.field private static i:Landroid/location/Location; = null

.field private static j:I = -0x1

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:J


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:J

.field private F:D

.field private G:D

.field private H:D

.field private I:J

.field private J:J

.field private K:J

.field private M:Lcom/baidu/location/c/e$e;

.field private O:J

.field private P:J

.field private R:Lcom/baidu/location/c/e$a;

.field private S:Lcom/baidu/location/c/e$b;

.field private T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private aa:Ljava/lang/String;

.field private ab:J

.field private ac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:J

.field private ag:J

.field private ah:J

.field private ai:Lcom/baidu/location/BDLocation;

.field private aj:Z

.field private ak:Z

.field private al:J

.field private am:Ljava/lang/String;

.field private an:J

.field private ao:Ljava/lang/StringBuilder;

.field public d:J

.field private f:Landroid/content/Context;

.field private g:Landroid/location/LocationManager;

.field private h:Landroid/location/Location;

.field private k:Lcom/baidu/location/c/e$f;

.field private l:Lcom/baidu/location/c/e$h;

.field private m:Landroid/location/GpsStatus;

.field private n:Lcom/baidu/location/c/e$c;

.field private o:Z

.field private p:Lcom/baidu/location/c/e$d;

.field private q:Z

.field private r:Landroid/location/GpsStatus$NmeaListener;

.field private s:Landroid/location/OnNmeaMessageListener;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/c/e;->k:Lcom/baidu/location/c/e$f;

    iput-object v0, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$h;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->o:Z

    iput-object v0, p0, Lcom/baidu/location/c/e;->p:Lcom/baidu/location/c/e$d;

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->q:Z

    iput-object v0, p0, Lcom/baidu/location/c/e;->r:Landroid/location/GpsStatus$NmeaListener;

    iput-object v0, p0, Lcom/baidu/location/c/e;->s:Landroid/location/OnNmeaMessageListener;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/c/e;->z:J

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->A:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->B:Z

    iput-object v0, p0, Lcom/baidu/location/c/e;->C:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->D:Z

    iput-wide v2, p0, Lcom/baidu/location/c/e;->E:J

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/baidu/location/c/e;->F:D

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/baidu/location/c/e;->G:D

    iput-wide v4, p0, Lcom/baidu/location/c/e;->H:D

    iput-wide v2, p0, Lcom/baidu/location/c/e;->I:J

    iput-wide v2, p0, Lcom/baidu/location/c/e;->J:J

    iput-wide v2, p0, Lcom/baidu/location/c/e;->K:J

    iput-object v0, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;

    iput-wide v2, p0, Lcom/baidu/location/c/e;->O:J

    iput-wide v2, p0, Lcom/baidu/location/c/e;->P:J

    iput-object v0, p0, Lcom/baidu/location/c/e;->R:Lcom/baidu/location/c/e$a;

    iput-object v0, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/e$b;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->T:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->U:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->V:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->W:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->X:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->Y:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->Z:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/location/c/e;->aa:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/c/e;->ab:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/location/c/e;->ac:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/baidu/location/c/e;->ad:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/e;->ae:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/c/e;->af:J

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/baidu/location/c/e;->ag:J

    iput-wide v4, p0, Lcom/baidu/location/c/e;->ah:J

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->aj:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->ak:Z

    iput-wide v2, p0, Lcom/baidu/location/c/e;->al:J

    iput-object v0, p0, Lcom/baidu/location/c/e;->am:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/c/e;->an:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/e;->ao:Ljava/lang/StringBuilder;

    iput-wide v2, p0, Lcom/baidu/location/c/e;->d:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "android.location.GnssStatus"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->o:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, p0, Lcom/baidu/location/c/e;->o:Z

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1

    :try_start_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/c/e;->am:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/baidu/location/c/e;->q:Z

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->t:I

    return p0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/baidu/location/c/e;->y:J

    return-wide p0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->K:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->m:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/e$e;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/baidu/location/c/e;
    .locals 2

    const-class v0, Lcom/baidu/location/c/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/c/e;->e:Lcom/baidu/location/c/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/c/e;

    invoke-direct {v1}, Lcom/baidu/location/c/e;-><init>()V

    sput-object v1, Lcom/baidu/location/c/e;->e:Lcom/baidu/location/c/e;

    :cond_0
    sget-object v1, Lcom/baidu/location/c/e;->e:Lcom/baidu/location/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 24

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide v3, 0x4081580000000000L    # 555.0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    :cond_4
    sget v5, Lcom/baidu/location/c/e;->Q:F

    const v6, -0x43dc28f6    # -0.01f

    const/16 v7, 0xe

    const/16 v10, 0xb

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x5

    const-wide/16 v17, 0x3e8

    const/4 v8, 0x4

    const/16 v19, 0x3

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/4 v9, 0x2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v21

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v20

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    sget v0, Lcom/baidu/location/c/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v15

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    div-long v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v14

    sget v0, Lcom/baidu/location/c/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    sget v0, Lcom/baidu/location/c/e;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v12

    sget v0, Lcom/baidu/location/c/e;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    sget v0, Lcom/baidu/location/c/e;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v10

    sget v0, Lcom/baidu/location/c/e;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, v6, v1

    sget-wide v0, Lcom/baidu/location/c/e;->N:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v6, v1

    const-string v0, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d&ll_sn=%d|%d|%d|%d|%d&ll_snr=%.1f"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/16 v6, 0xf

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v6, v21

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v6, v20

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    sget v0, Lcom/baidu/location/c/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v16

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v15

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    div-long v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v14

    sget v0, Lcom/baidu/location/c/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v13

    sget v0, Lcom/baidu/location/c/e;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v12

    sget v0, Lcom/baidu/location/c/e;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    sget v0, Lcom/baidu/location/c/e;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v10

    sget v0, Lcom/baidu/location/c/e;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, v6, v1

    sget-wide v0, Lcom/baidu/location/c/e;->N:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, v6, v1

    sget v0, Lcom/baidu/location/c/e;->Q:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d&ll_sn=%d|%d|%d|%d|%d&ll_snr=%.1f&ll_bp=%.2f"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    :try_start_0
    sget v0, Lcom/baidu/location/c/e;->j:I

    if-ne v0, v9, :cond_6

    sget-object v0, Lcom/baidu/location/c/e;->i:Landroid/location/Location;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "&ll_fake=%d|%.5f|%.5f|%d"

    new-array v4, v8, [Ljava/lang/Object;

    sget v5, Lcom/baidu/location/c/e;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v21

    sget-object v5, Lcom/baidu/location/c/e;->i:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v20

    sget-object v5, Lcom/baidu/location/c/e;->i:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v5, Lcom/baidu/location/c/e;->i:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    div-long v5, v5, v17

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v19

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ll_fake="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/baidu/location/c/e;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_4
    return-object v0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "%.1f;"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "%.0f;"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "%.0f"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/c/e;->a(Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;ZZZZZF)Ljava/util/ArrayList;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/baidu/location/c/e;->a(ZZZZZF)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;ZF)",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-eqz p2, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    cmpg-float v2, v3, p3

    if-gez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private a(ZZZZZF)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZF)",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/c/e;->W:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p5, p6}, Lcom/baidu/location/c/e;->a(Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/baidu/location/c/e;->X:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p5, p6}, Lcom/baidu/location/c/e;->a(Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/baidu/location/c/e;->Y:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p5, p6}, Lcom/baidu/location/c/e;->a(Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/baidu/location/c/e;->Z:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p5, p6}, Lcom/baidu/location/c/e;->a(Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->g(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "$GPGGA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v2, 0x6

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;III)V

    goto :goto_0

    :cond_1
    const-string v0, "$GPRMC,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;III)V
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "$GPGGA,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    array-length p1, v0

    const/4 v1, 0x7

    if-ge p1, v1, :cond_2

    return-void

    :cond_1
    const-string v1, "$GPRMC,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    array-length p1, v0

    if-ge p1, v2, :cond_2

    return-void

    :cond_2
    aget-object p1, v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez p1, :cond_4

    aget-object p1, v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v6, :cond_4

    :try_start_0
    aget-object p1, v0, p2

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aget-object p1, v0, p2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    div-double/2addr p1, v3

    add-double/2addr v8, p1

    iget-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    if-nez p1, :cond_3

    new-instance p1, Lcom/baidu/location/BDLocation;

    invoke-direct {p1}, Lcom/baidu/location/BDLocation;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v8, v9}, Lcom/baidu/location/BDLocation;->setLatitude(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v5, p0, Lcom/baidu/location/c/e;->ak:Z

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    :goto_0
    iget-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    if-eqz p1, :cond_5

    aget-object p1, v0, p3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    aget-object p1, v0, p3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_5

    :try_start_1
    aget-object p1, v0, p3

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    aget-object p1, v0, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    div-double/2addr p1, v3

    add-double/2addr v8, p1

    iget-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v8, v9}, Lcom/baidu/location/BDLocation;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-boolean v5, p0, Lcom/baidu/location/c/e;->ak:Z

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    :goto_1
    aget-object p1, v0, p4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    if-ne p4, v6, :cond_7

    aget-object p1, v0, p4

    const-string p2, "V"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_2
    iput-boolean v7, p0, Lcom/baidu/location/c/e;->aj:Z

    goto :goto_4

    :cond_6
    aget-object p1, v0, p4

    const-string p2, "A"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_7
    if-ne p4, v2, :cond_9

    aget-object p1, v0, p4

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    iput-boolean v5, p0, Lcom/baidu/location/c/e;->aj:Z

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    if-eqz p1, :cond_a

    iput-boolean v7, p0, Lcom/baidu/location/c/e;->ak:Z

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/location/c/e;->ah:J

    :cond_b
    :goto_5
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/c/k;->a()Lcom/baidu/location/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/k;->e()Z

    move-result v0

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/b;->f()Lcom/baidu/location/c/a;

    move-result-object v1

    new-instance v2, Lcom/baidu/location/c/a;

    invoke-direct {v2, v1}, Lcom/baidu/location/c/a;-><init>(Lcom/baidu/location/c/a;)V

    invoke-static {v2}, Lcom/baidu/location/b/u;->a(Lcom/baidu/location/c/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/baidu/location/b/u;->a(J)V

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1}, Lcom/baidu/location/b/u;->a(Landroid/location/Location;)V

    invoke-static {p1}, Lcom/baidu/location/b/u;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/b/c;->a()Lcom/baidu/location/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/location/b/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/location/b/u;->b(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/b/u;->c()Lcom/baidu/location/c/a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/b/u;->d()Landroid/location/Location;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/b/u;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, p1, v2}, Lcom/baidu/location/b/y;->a(Lcom/baidu/location/c/a;Lcom/baidu/location/c/j;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/location/Location;Landroid/location/Location;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz p2, :cond_3

    sget p2, Lcom/baidu/location/e/k;->u:I

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    invoke-static {}, Lcom/baidu/location/e/e;->a()Lcom/baidu/location/e/e;

    move-result-object p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/baidu/location/e/e;->a(DD)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    cmpg-float p2, v2, v3

    if-gez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    sget p1, Lcom/baidu/location/e/k;->K:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    sget p1, Lcom/baidu/location/e/k;->M:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    sget p1, Lcom/baidu/location/e/k;->J:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_7

    sget p1, Lcom/baidu/location/e/k;->L:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    cmpl-float p0, p0, v3

    if-lez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->u:I

    return p0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->ag:J

    return-wide p1
.end method

.method public static b(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/c/e;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&g_tp=0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->T:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->e(Landroid/location/Location;)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/e;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/baidu/location/e/c;->g(Ljava/util/ArrayList;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->f(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->a(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->h(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->b(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->c(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->e(Ljava/util/ArrayList;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/baidu/location/e/c;->d(Ljava/util/ArrayList;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/baidu/location/c/e;->aa:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/e;->ab:J

    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->D:Z

    const/high16 p1, -0x40800000    # -1.0f

    sput p1, Lcom/baidu/location/c/e;->Q:F

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/e;->B:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->A:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v1, v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lt v1, v4, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    const/4 v6, 0x2

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-byte v7, v1, v6

    xor-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "%02x"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v0, 0x3

    if-lt v2, v5, :cond_5

    add-int/2addr v0, v4

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    return v3
.end method

.method static synthetic c(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->v:I

    return p0
.end method

.method static synthetic c(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->J:J

    return-wide v0
.end method

.method static synthetic c(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->I:J

    return-wide p1
.end method

.method public static c(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/c/e;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/baidu/location/c/e;->L:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic c(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->w:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->P:J

    return-wide v0
.end method

.method static synthetic d(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->J:J

    return-wide p1
.end method

.method static synthetic d(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    sput-object p0, Lcom/baidu/location/c/e;->i:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->U:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic e(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->j:I

    return p0
.end method

.method static synthetic e(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->K:J

    return-wide v0
.end method

.method static synthetic e(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->z:J

    return-wide p1
.end method

.method static synthetic e(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->V:Ljava/util/ArrayList;

    return-object p1
.end method

.method private e(Landroid/location/Location;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/e;->an:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/c/e$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;

    invoke-virtual {v0, p1}, Lcom/baidu/location/c/e$e;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic f(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->x:I

    return p0
.end method

.method private f(Landroid/location/Location;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x64

    return p1

    :cond_1
    iget-wide v1, p0, Lcom/baidu/location/c/e;->ag:J

    iget-wide v3, p0, Lcom/baidu/location/c/e;->ah:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, -0x1

    cmp-long p1, v1, v3

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/baidu/location/c/e;->aj:Z

    if-nez p1, :cond_2

    const/16 p1, 0xc8

    return p1

    :cond_2
    iget-boolean p1, p0, Lcom/baidu/location/c/e;->ak:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x12c

    return p1

    :cond_3
    iget-boolean p1, p0, Lcom/baidu/location/c/e;->ak:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/baidu/location/c/e;->aj:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x190

    return p1

    :cond_4
    iput-wide v5, p0, Lcom/baidu/location/c/e;->ah:J

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->ak:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->aj:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    :cond_5
    iget-wide v1, p0, Lcom/baidu/location/c/e;->ag:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    iget-wide v1, p0, Lcom/baidu/location/c/e;->ah:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v1, v5

    if-nez p1, :cond_6

    const/16 p1, 0x1f4

    return p1

    :catch_0
    :cond_6
    return v0
.end method

.method static synthetic f(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->P:J

    return-wide p1
.end method

.method static synthetic f(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->W:Ljava/util/ArrayList;

    return-object p0
.end method

.method private g(Landroid/location/Location;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    sget v1, Lcom/baidu/location/c/e;->a:I

    const-string v2, "satellites"

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/location/c/e;->q:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/baidu/location/e/k;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/baidu/location/c/e;->G:D

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/baidu/location/e/k;->a(DD)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/baidu/location/c/e;->H:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    const-wide v5, 0x409f400000000000L    # 2000.0

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    iget-wide v3, p0, Lcom/baidu/location/c/e;->G:D

    double-to-float v1, v3

    invoke-virtual {p1, v1}, Landroid/location/Location;->setSpeed(F)V

    :cond_1
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/c/e;->E:J

    iput-object p1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    sget v3, Lcom/baidu/location/c/e;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p1, :cond_2

    :goto_1
    iput-object v0, p0, Lcom/baidu/location/c/e;->C:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setTime(J)V

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v8, v0

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v0, v8

    iget-object v8, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->hasSpeed()Z

    move-result v8

    if-nez v8, :cond_3

    const/high16 v0, -0x40800000    # -1.0f

    :cond_3
    if-nez v3, :cond_4

    :try_start_1
    iget-object v8, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v9, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v4

    const/4 v0, 0x3

    iget-object v9, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getBearing()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v0

    const/4 v0, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v0

    const-string v0, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d"

    invoke-static {v2, v0, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    const-string v2, "gps"

    if-eqz v0, :cond_6

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/b/c;->a()Lcom/baidu/location/b/c;

    move-result-object v3

    iget-object v6, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    const-string v7, "gcj02"

    invoke-virtual {v3, v0, v7, v6}, Lcom/baidu/location/b/c;->a(Lcom/baidu/location/BDLocation;Ljava/lang/String;Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setExtrainfo(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v3, "bd_beidou"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v3}, Lcom/baidu/location/BDLocation;->setGnssProvider(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v0}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/BDLocation;)V

    sget p1, Lcom/baidu/location/c/e;->a:I

    if-le p1, v4, :cond_6

    iget-object p1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-static {p1, v5}, Lcom/baidu/location/b/y;->a(Landroid/location/Location;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/baidu/location/c/k;->a()Lcom/baidu/location/c/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/k;->e()Z

    move-result p1

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->f()Lcom/baidu/location/c/a;

    move-result-object v0

    new-instance v3, Lcom/baidu/location/c/a;

    invoke-direct {v3, v0}, Lcom/baidu/location/c/a;-><init>(Lcom/baidu/location/c/a;)V

    invoke-static {v3}, Lcom/baidu/location/b/u;->a(Lcom/baidu/location/c/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/baidu/location/b/u;->a(J)V

    new-instance v0, Landroid/location/Location;

    iget-object v3, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0}, Lcom/baidu/location/b/u;->a(Landroid/location/Location;)V

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/b/u;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/b/c;->a()Lcom/baidu/location/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/b/u;->b(Ljava/lang/String;)V

    if-nez p1, :cond_6

    invoke-static {}, Lcom/baidu/location/b/z;->a()Lcom/baidu/location/b/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/z;->b()V

    :cond_6
    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/baidu/location/b/z;->a()Lcom/baidu/location/b/z;

    move-result-object p1

    sget v0, Lcom/baidu/location/c/e;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/baidu/location/b/z;->a(Landroid/location/Location;I)V

    :cond_7
    return-void

    :cond_8
    iput-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    return-void
.end method

.method static synthetic h(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->X:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->Y:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->Z:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic k(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->T:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/baidu/location/c/e;->y:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/baidu/location/c/e;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/baidu/location/c/e;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "&gsvn=%d&gsfn=%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic l(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->V:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic m(Lcom/baidu/location/c/e;)Landroid/location/GpsStatus;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->m:Landroid/location/GpsStatus;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 1

    sget-boolean v0, Lcom/baidu/location/e/k;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/baidu/location/c/e;->f(Landroid/location/Location;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/b;->d(Lcom/baidu/location/BDLocation;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/c/e;->d()V

    :goto_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    new-instance v0, Lcom/baidu/location/c/e$e;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/e$e;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 12

    const-string v0, "baidu_location_service"

    const-string v1, "GpsMan start gps..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->B:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/baidu/location/c/e;->o:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/baidu/location/c/e$d;

    invoke-direct {v2, p0, v1}, Lcom/baidu/location/c/e$d;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v2, p0, Lcom/baidu/location/c/e;->p:Lcom/baidu/location/c/e$d;

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/c/e;->f:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Lcom/baidu/location/e/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_2

    new-instance v2, Lcom/baidu/location/c/e$c;

    invoke-direct {v2, p0, v1}, Lcom/baidu/location/c/e$c;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v2, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$c;

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    :cond_2
    :goto_0
    new-instance v9, Lcom/baidu/location/c/e$h;

    invoke-direct {v9, p0, v1}, Lcom/baidu/location/c/e$h;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v9, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$h;

    iget-object v4, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    const-string v5, "passive"

    const-wide/16 v6, 0x2328

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance v2, Lcom/baidu/location/c/e$f;

    invoke-direct {v2, p0, v1}, Lcom/baidu/location/c/e$f;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v2, p0, Lcom/baidu/location/c/e;->k:Lcom/baidu/location/c/e$f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-string v5, "force_xtra_injection"

    invoke-virtual {v3, v4, v5, v2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    iget-object v6, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    const-string v7, "gps"

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/baidu/location/c/e;->k:Lcom/baidu/location/c/e$f;

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-boolean v2, p0, Lcom/baidu/location/c/e;->o:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/e$b;

    if-nez v2, :cond_3

    sget v2, Lcom/baidu/location/e/k;->aB:I

    if-ne v2, v0, :cond_3

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    sget-wide v4, Lcom/baidu/location/e/k;->aA:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_3

    new-instance v2, Lcom/baidu/location/c/e$b;

    invoke-direct {v2, p0, v1}, Lcom/baidu/location/c/e$b;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v2, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/e$b;

    :cond_3
    iget-object v2, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/e$b;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v2}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/c/e;->O:J

    sget-boolean v2, Lcom/baidu/location/e/k;->l:Z

    if-nez v2, :cond_6

    sget v2, Lcom/baidu/location/e/k;->aM:I

    if-ne v2, v0, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_5

    new-instance v1, Lcom/baidu/location/c/f;

    invoke-direct {v1, p0}, Lcom/baidu/location/c/f;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v1, p0, Lcom/baidu/location/c/e;->s:Landroid/location/OnNmeaMessageListener;

    iget-object v2, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/baidu/location/c/e$g;

    invoke-direct {v2, p0, v1}, Lcom/baidu/location/c/e$g;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v2, p0, Lcom/baidu/location/c/e;->r:Landroid/location/GpsStatus$NmeaListener;

    const-string v1, "android.location.LocationManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addNmeaListener"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/location/GpsStatus$NmeaListener;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/c/e;->r:Landroid/location/GpsStatus$NmeaListener;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    iput-boolean v0, p0, Lcom/baidu/location/c/e;->B:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void
.end method

.method public d()V
    .locals 7

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->B:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    :try_start_0
    iget-object v3, p0, Lcom/baidu/location/c/e;->p:Lcom/baidu/location/c/e$d;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iput-object v1, p0, Lcom/baidu/location/c/e;->p:Lcom/baidu/location/c/e$d;

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$c;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    iput-object v1, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$c;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$h;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v1, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/c/e;->k:Lcom/baidu/location/c/e$f;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/c/e;->s:Landroid/location/OnNmeaMessageListener;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/c/e;->r:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v0, :cond_6

    const-string v0, "android.location.LocationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "removeNmeaListener"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/location/GpsStatus$NmeaListener;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/location/c/e;->r:Landroid/location/GpsStatus$NmeaListener;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/baidu/location/c/e;->S:Lcom/baidu/location/c/e$b;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->unregisterGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)V

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/location/c/e;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    sput v2, Lcom/baidu/location/e/k;->d:I

    sput v2, Lcom/baidu/location/e/k;->u:I

    iput-object v1, p0, Lcom/baidu/location/c/e;->k:Lcom/baidu/location/c/e$f;

    iput-boolean v2, p0, Lcom/baidu/location/c/e;->B:Z

    invoke-direct {p0, v2}, Lcom/baidu/location/c/e;->b(Z)V

    return-void
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/location/c/e;->d()V

    iget-object v0, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/c/e;->M:Lcom/baidu/location/c/e$e;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/baidu/location/c/e$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/e/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"s\":\"%f\",\"n\":\"%d\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    :goto_0
    float-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [D

    invoke-static {}, Lcom/baidu/location/e/e;->a()Lcom/baidu/location/e/e;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/baidu/location/e/e;->a(DD)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v10, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-string v12, "gps2gcj"

    invoke-static {v4, v5, v10, v11, v12}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v4

    aget-wide v10, v4, v8

    cmpl-double v5, v10, v6

    if-gtz v5, :cond_2

    aget-wide v10, v4, v9

    cmpl-double v5, v10, v6

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    aput-wide v5, v4, v8

    iget-object v5, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    aput-wide v5, v4, v9

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    aput-wide v10, v4, v8

    iget-object v5, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    aput-wide v10, v4, v9

    aget-wide v10, v4, v8

    cmpl-double v5, v10, v6

    if-gtz v5, :cond_4

    aget-wide v10, v4, v9

    cmpl-double v5, v10, v6

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    aput-wide v5, v4, v8

    iget-object v5, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    aput-wide v5, v4, v9

    :cond_4
    const/4 v5, 0x0

    :goto_1
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aget-wide v10, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v8

    aget-wide v10, v4, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v1

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    sget v2, Lcom/baidu/location/c/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"in_cn\":\"0\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    sget-boolean v1, Lcom/baidu/location/e/k;->l:Z

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-direct {p0, v3}, Lcom/baidu/location/c/e;->f(Landroid/location/Location;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, ",\"is_mock\":%d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, ",\"h\":%.2f}}"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}}"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public g()Landroid/location/Location;
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    return-object v0
.end method

.method public h()Lcom/baidu/location/BDLocation;
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/c/e;->ah:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c/e;->ai:Lcom/baidu/location/BDLocation;

    return-object v0
.end method

.method public i()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget v4, Lcom/baidu/location/c/e;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "satellites"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_1

    return v0

    :cond_1
    return v1

    :catch_1
    nop

    iget-object v4, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/baidu/location/c/e;->h:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public j()Z
    .locals 6

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/c/e;->E:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/baidu/location/c/e;->A:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/baidu/location/c/e;->z:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->D:Z

    return v0
.end method

.method public k()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/e;->R:Lcom/baidu/location/c/e$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/e;->g:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/e;->R:Lcom/baidu/location/c/e$a;

    :cond_0
    return-void
.end method

.method public declared-synchronized m()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "-2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/c/e;->ab:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/e;->aa:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&gnsf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
