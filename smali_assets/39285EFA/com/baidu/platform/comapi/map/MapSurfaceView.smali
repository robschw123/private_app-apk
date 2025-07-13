.class public Lcom/baidu/platform/comapi/map/MapSurfaceView;
.super Lcom/baidu/platform/comapi/map/aj;
.source "MapSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;
.implements Lcom/baidu/platform/comapi/map/MapViewInterface;
.implements Lcom/baidu/platform/comapi/map/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapSurfaceView$b;,
        Lcom/baidu/platform/comapi/map/MapSurfaceView$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/concurrent/ExecutorService;

.field private static s:I


# instance fields
.field private B:I

.field private C:I

.field private D:I

.field protected a:Lcom/baidu/platform/comapi/map/MapController;

.field protected b:Lcom/baidu/platform/comapi/map/af;

.field protected c:Lcom/baidu/platform/comapi/map/l;

.field protected d:Lcom/baidu/platform/comapi/map/p;

.field protected volatile e:Z

.field protected f:Z

.field protected g:Lcom/baidu/platform/comapi/map/am;

.field protected h:Landroid/view/GestureDetector;

.field protected i:Lcom/baidu/platform/comapi/map/ac;

.field protected j:Lcom/baidu/mapsdkplatform/comapi/map/d;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/baidu/platform/comapi/map/LocationOverlay;

.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmLayer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:I

.field private y:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/baidu/platform/comapi/map/ab;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/aj;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 54
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 57
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 58
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 61
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 62
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 69
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 71
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 78
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 79
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 81
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 83
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 94
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 944
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 945
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 946
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 105
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, v0

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 54
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 57
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 58
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 61
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 62
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 69
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 71
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 78
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 79
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 94
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 944
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 945
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 946
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 110
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/aj;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 54
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 57
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 58
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 61
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 62
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 69
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 71
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 78
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 79
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 94
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 944
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 945
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 946
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 115
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/aj;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 54
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 57
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 58
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 p3, 0x0

    .line 60
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 61
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 62
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 69
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 71
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 74
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 77
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 78
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 79
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 81
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 94
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 944
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 945
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 946
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 120
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/aj;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 53
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 54
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 57
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 58
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 61
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 62
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 69
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 71
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 78
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 79
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 94
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 944
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 945
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 946
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 125
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method private declared-synchronized a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 565
    monitor-exit p0

    return v0

    .line 567
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 568
    :try_start_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 571
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    :try_start_4
    invoke-virtual {p3}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addBmLayerBelow(JJII)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 572
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 561
    :cond_3
    :goto_0
    monitor-exit p0

    return v0
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    return p0
.end method


# virtual methods
.method protected a(Lcom/baidu/platform/comapi/map/ai$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ah;
    .locals 1

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/aj;->a(Lcom/baidu/platform/comapi/map/ai$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ah;

    move-result-object p1

    .line 134
    instance-of p2, p1, Lcom/baidu/platform/comapi/map/f;

    if-eqz p2, :cond_0

    .line 135
    move-object p2, p1

    check-cast p2, Lcom/baidu/platform/comapi/map/f;

    .line 136
    iget-boolean p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    if-eqz p3, :cond_0

    .line 137
    new-instance p3, Lcom/baidu/platform/comapi/map/MapSurfaceView$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView$a;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/platform/comapi/map/t;)V

    invoke-virtual {p2, p3}, Lcom/baidu/platform/comapi/map/f;->a(Lcom/baidu/platform/comapi/map/f$f;)V

    :cond_0
    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    if-nez v0, :cond_2

    return-void

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 515
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/af;->a()V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/aj;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ai$a;Z)V

    const/16 p2, 0xf4

    const/16 p3, 0xf2

    const/16 v0, 0xf0

    .line 156
    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setBackgroundColor(I)V

    const/4 p2, 0x0

    .line 158
    invoke-virtual {p0, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setPixelFormatTransparent(Z)V

    .line 159
    new-instance p2, Lcom/baidu/platform/comapi/map/am;

    invoke-direct {p2}, Lcom/baidu/platform/comapi/map/am;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    .line 160
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->h:Landroid/view/GestureDetector;

    .line 161
    new-instance p1, Lcom/baidu/platform/comapi/map/p;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lcom/baidu/platform/comapi/map/p;-><init>(Ljava/lang/ref/WeakReference;Lcom/baidu/platform/comapi/map/ak;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    .line 163
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderer(Lcom/baidu/platform/comapi/map/aq;)V

    const/4 p1, 0x1

    .line 164
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    .line 167
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    new-instance p2, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/platform/comapi/map/t;)V

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/am;->a(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 168
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string p2, "BasicMap surfaceView initView"

    .line 170
    invoke-virtual {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 541
    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1
.end method

.method public addBmLayerBelow(Lcom/baidu/platform/comapi/map/Overlay;Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 553
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-direct {p0, v0, v1, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 555
    invoke-direct {p0, v0, v1, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 608
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 611
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    .line 613
    monitor-exit p0

    return v0

    .line 616
    :cond_1
    :try_start_1
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/ao;

    if-eqz v2, :cond_2

    .line 617
    check-cast p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->addedToMapView()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return p1

    .line 618
    :cond_2
    :try_start_2
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 620
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v1, :cond_3

    .line 621
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 623
    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->addedToMapView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 624
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 625
    :try_start_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    check-cast p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/af;->a(Lcom/baidu/platform/comapi/map/InnerOverlay;)V

    .line 627
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 628
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 627
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 630
    :cond_4
    monitor-exit p0

    return v0

    .line 632
    :cond_5
    :try_start_6
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v2, :cond_7

    .line 633
    move-object v2, p1

    check-cast v2, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->getUpdateType()I

    move-result v2

    const-string v4, "item"

    invoke-virtual {v1, v2, v0, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    .line 635
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    .line 636
    monitor-exit p0

    return v0

    .line 638
    :cond_6
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 639
    :try_start_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 641
    :try_start_9
    move-object v0, p1

    check-cast v0, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->a()V

    .line 643
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    .line 644
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 645
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 646
    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    .line 640
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 648
    :cond_7
    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    .line 609
    :cond_8
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public addSimpleOnGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/am;->a(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public addStateListener(Lcom/baidu/platform/comapi/map/ab;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public animateTo(Lcom/baidu/platform/comapi/map/MapStatus;I)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_0
    return-void
.end method

.method public animateTo(Lcom/baidu/platform/comapi/map/MapStatus;II)V
    .locals 1

    .line 990
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;II)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 526
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a()V

    return-void
.end method

.method public beginLocationLayerAnimation()V
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/LocationOverlay;->beginLocationLayerAnimation()V

    :cond_0
    return-void
.end method

.method public bridge synthetic captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    invoke-super/range {p0 .. p6}, Lcom/baidu/platform/comapi/map/aj;->captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public clearDefaultLocationLayerData(Landroid/os/Bundle;)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->clearLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;II)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/c;II)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V
    .locals 7

    if-eqz p2, :cond_5

    .line 456
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 457
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 460
    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    move v3, v0

    .line 462
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 463
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ltz v2, :cond_5

    if-ltz v3, :cond_5

    if-lez v0, :cond_5

    if-gtz v1, :cond_1

    goto :goto_2

    .line 468
    :cond_1
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    if-le v0, v4, :cond_2

    .line 469
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    :cond_2
    move v4, v0

    .line 471
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    if-le v1, v0, :cond_3

    .line 472
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    sub-int/2addr p2, v1

    sub-int/2addr v0, p2

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v1

    .line 475
    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeX()I

    move-result p2

    if-gt v2, p2, :cond_5

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeY()I

    move-result p2

    if-le v3, p2, :cond_4

    goto :goto_2

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/c;IIIILandroid/graphics/Bitmap$Config;)V

    .line 479
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public enable3D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public forceSetTraffic(Z)V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 908
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 910
    :cond_0
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/u;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/u;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/d;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-object v0
.end method

.method public getBmlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmLayer;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    return-object v0
.end method

.method public getController()Lcom/baidu/platform/comapi/map/MapController;
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    return-object v0
.end method

.method public getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentZoomLevel()F
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getCurrentZoomLevel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getDebugFlags()I
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->getDebugFlags()I

    move-result v0

    return v0
.end method

.method public getDefaultLocationLay()Lcom/baidu/platform/comapi/map/LocationOverlay;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    return-object v0
.end method

.method public getFPS()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->e()I

    move-result v0

    return v0
.end method

.method public getFZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 6

    .line 1227
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1230
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1231
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1232
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v3, "bottom"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1233
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v4, "right"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1234
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    const-string v1, "top"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1236
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1237
    iget-object v5, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1238
    iget-object v2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1239
    iget-object v2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1240
    iget-object p2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public getGeoRound()Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1162
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1163
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 5

    .line 816
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 817
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    .line 818
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 819
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 821
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 4

    .line 826
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 827
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/l;

    .line 828
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 829
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/platform/comapi/map/l;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMapCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 6

    .line 1051
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1054
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1055
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iget-wide v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    return-object v1
.end method

.method public getMapRotation()I
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1112
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1113
    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    return v0
.end method

.method public getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    .line 1175
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOnLongPressListener()Lcom/baidu/platform/comapi/map/OnLongPressListener;
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/am;->a()Lcom/baidu/platform/comapi/map/OnLongPressListener;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOverlay(I)Lcom/baidu/platform/comapi/map/Overlay;
    .locals 4

    monitor-enter p0

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 841
    monitor-exit p0

    return-object v1

    .line 844
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/Overlay;

    .line 845
    iget v3, v2, Lcom/baidu/platform/comapi/map/Overlay;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    .line 846
    monitor-exit p0

    return-object v2

    .line 850
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized getOverlay(Ljava/lang/Class;)Lcom/baidu/platform/comapi/map/Overlay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/baidu/platform/comapi/map/Overlay;"
        }
    .end annotation

    monitor-enter p0

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/Overlay;

    .line 855
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 856
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 860
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/Overlay;",
            ">;"
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    return-object v0
.end method

.method public getOverlooking()I
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1130
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1131
    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    return v0
.end method

.method public getProjection()Lcom/baidu/platform/comapi/map/Projection;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    return-object v0
.end method

.method public bridge synthetic getRenderControl()Lcom/baidu/platform/comapi/map/ah;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->getRenderControl()Lcom/baidu/platform/comapi/map/ah;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRenderMode()I
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getSingleThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 177
    sget-object v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public bridge synthetic getViewType()Lcom/baidu/platform/comapi/map/ai$a;
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->getViewType()Lcom/baidu/platform/comapi/map/ai$a;

    move-result-object v0

    return-object v0
.end method

.method public getWinRound()Lcom/baidu/platform/comapi/map/MapStatus$WinRound;
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1148
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1149
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomLevel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 2

    .line 1192
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v1

    .line 1194
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v0

    .line 1195
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1204
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1205
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1206
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v1

    const-string v2, "bottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1207
    iget-object v1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1208
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    const-string v1, "top"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0, p2, p3}, Lcom/baidu/platform/comapi/map/MapController;->getZoomToBound(Landroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 2

    .line 1246
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    .line 1247
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v1

    .line 1248
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v0

    .line 1249
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F
    .locals 1

    .line 1215
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1218
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1219
    iget-object p3, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result p3

    const-string v0, "left"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1220
    iget-object p3, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p3

    const-string v0, "bottom"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1221
    iget-object p3, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p3}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result p3

    const-string v0, "right"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1222
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    const-string p3, "top"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1223
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->getZoomToBoundF(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public inRangeOfView(FF)Z
    .locals 3

    const/4 v0, 0x0

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 1481
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_1

    cmpg-float p1, p2, v1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public declared-synchronized insertOverlay(Lcom/baidu/platform/comapi/map/Overlay;I)Z
    .locals 1

    monitor-enter p0

    .line 660
    :try_start_0
    instance-of p2, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p2, :cond_1

    .line 661
    move-object p2, p1

    check-cast p2, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object p2, p2, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez p2, :cond_0

    .line 662
    move-object p2, p1

    check-cast p2, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    iput-object v0, p2, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 672
    :cond_0
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    check-cast p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/af;->a(Lcom/baidu/platform/comapi/map/InnerOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x0

    .line 675
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isBaseIndoorMap()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    return v0
.end method

.method public isPredictTraffic()Z
    .locals 1

    .line 966
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSatellite()Z
    .locals 1

    .line 879
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    return v0
.end method

.method public isStreetRoad()Z
    .locals 1

    .line 1272
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    .line 884
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 227
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->onAttachedToWindow()V

    .line 229
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 233
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    :cond_1
    return-void
.end method

.method public onBackground()V
    .locals 1

    .line 1358
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnBackground()V

    :cond_1
    const/4 v0, 0x1

    .line 1367
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 247
    :cond_0
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->onDetachedFromWindow()V

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    :cond_1
    return-void
.end method

.method public onForeground()V
    .locals 2

    .line 1374
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnForeground()V

    :cond_0
    const/4 v0, 0x0

    .line 1381
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    .line 1384
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ah;->b()Lcom/baidu/platform/comapi/map/ai$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/platform/comapi/map/ai$a;->b:Lcom/baidu/platform/comapi/map/ai$a;

    if-ne v0, v1, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    if-eqz v0, :cond_1

    .line 1386
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/p;->a()V

    .line 1388
    :cond_1
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->onResume()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    .line 746
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x32

    const/16 p3, -0x32

    packed-switch p2, :pswitch_data_0

    return v0

    .line 754
    :pswitch_0
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    .line 751
    :pswitch_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p3, v0}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    .line 760
    :pswitch_2
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    .line 757
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0, p3}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMapRenderModeChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getRenderMode()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 423
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->i:Lcom/baidu/platform/comapi/map/ac;

    if-eqz p1, :cond_2

    .line 424
    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/ac;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    const-string v1, "BasicMap onPause"

    .line 385
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/p;->b()V

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->onPause()V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/ab;

    .line 400
    invoke-interface {v1, p0}, Lcom/baidu/platform/comapi/map/ab;->a(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    goto :goto_0

    .line 403
    :cond_4
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->onPause()V

    const/4 v0, 0x1

    .line 404
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    return-void
.end method

.method public onRecycle()V
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ResetImageRes()V

    :cond_0
    return-void
.end method

.method public onRequestRender()V
    .locals 0

    .line 431
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 345
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    if-eqz v0, :cond_5

    .line 346
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap onResume isInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    if-nez v0, :cond_1

    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/p;->a()V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->onResume()V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/ab;

    .line 368
    invoke-interface {v1, p0}, Lcom/baidu/platform/comapi/map/ab;->b(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 370
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    .line 372
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->onResume()V

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 783
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 786
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 787
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    if-eqz v0, :cond_1

    .line 788
    iget-object v6, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v6, v6, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    if-lt v4, v6, :cond_1

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v6, v6, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    if-gt v4, v6, :cond_1

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v4, v4, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    if-lt v5, v4, :cond_1

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v4, v4, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    if-le v5, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    .line 795
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->h:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    return v1

    .line 806
    :cond_4
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 803
    :catch_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh(Lcom/baidu/platform/comapi/map/Overlay;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1313
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1316
    :cond_0
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v0, :cond_2

    .line 1317
    move-object v0, p1

    check-cast v0, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1318
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 1320
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 1321
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    goto :goto_0

    .line 1323
    :cond_1
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 1324
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 1326
    :goto_0
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->a(Z)V

    .line 1329
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1330
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized removeBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 590
    monitor-exit p0

    return v0

    .line 593
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeBmLayer(J)V

    .line 594
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 595
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 596
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 598
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 596
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 586
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized removeOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_1

    .line 683
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 685
    monitor-exit p0

    return v0

    .line 688
    :cond_1
    :try_start_1
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 689
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 690
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 691
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveLayer(J)V

    .line 692
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 693
    :try_start_2
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    :cond_2
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 697
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/af;->a(Lcom/baidu/platform/comapi/map/Overlay;)V

    .line 699
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v0, 0x0

    .line 700
    :try_start_3
    iput-wide v0, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x1

    .line 702
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 699
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 681
    :cond_4
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public removeSimpleOnGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/am;->b(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public removeStateListener(Lcom/baidu/platform/comapi/map/ab;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic requestRender()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/aj;->requestRender()V

    return-void
.end method

.method public saveScreenToLocal(Ljava/lang/String;)V
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->saveScreenToLocal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveScreenToLocal(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7

    .line 1544
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 1553
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 1554
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1557
    :cond_1
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1559
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1560
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ltz v1, :cond_8

    if-ltz v2, :cond_8

    if-lez v3, :cond_8

    if-gtz v4, :cond_2

    goto :goto_2

    .line 1565
    :cond_2
    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    if-le v3, v5, :cond_3

    .line 1566
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    sub-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 1568
    :cond_3
    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    if-le v4, v5, :cond_4

    .line 1569
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    sub-int/2addr p2, v5

    sub-int/2addr v4, p2

    .line 1572
    :cond_4
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeX()I

    move-result p2

    if-gt v1, p2, :cond_7

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeY()I

    move-result p2

    if-le v2, p2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 1580
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v5, "x"

    .line 1582
    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "y"

    .line 1583
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "width"

    .line 1584
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 1585
    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1586
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :catch_0
    :cond_6
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1573
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void

    .line 1594
    :cond_9
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public setBaseIndoorMap(Z)V
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1283
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 1285
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/platform/comapi/map/x;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comapi/map/x;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/d;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-void
.end method

.method public bridge synthetic setDebugFlags(I)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->setDebugFlags(I)V

    return-void
.end method

.method public setDefaultLocationLayerData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/OverlayLocationData;",
            ">;)V"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setLocationLayerData(Ljava/util/List;)V

    return-void
.end method

.method public setFPS(I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->k:Lcom/baidu/platform/comapi/map/ah;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ah;->a(I)V

    return-void
.end method

.method public setFirstFrameListener(Lcom/baidu/platform/comapi/map/e;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comapi/map/e;)V

    :cond_0
    return-void
.end method

.method public setGeoRound(Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;)V
    .locals 0

    return-void
.end method

.method public setItsPreTime(III)Z
    .locals 1

    .line 949
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    if-ne v0, p3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 956
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 957
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 958
    iput p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 959
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetItsPreTime(III)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setMapCenter(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 3

    .line 1041
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1043
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 1044
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 1045
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setMapController(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 185
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/p;->a(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    .line 186
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/p;->a(Z)V

    .line 188
    new-instance p1, Lcom/baidu/platform/comapi/map/af;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/baidu/platform/comapi/map/af;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 190
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1, p1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlayMapCallBack(Lcom/baidu/platform/comapi/map/af;)V

    .line 192
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/MapController;->setMapViewInterface(Lcom/baidu/platform/comapi/map/MapViewInterface;)V

    .line 193
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b()V

    .line 195
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/MapController;->setMapRenderModeChangeListener(Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;)V

    .line 197
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 199
    new-instance p1, Lcom/baidu/platform/comapi/map/l;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/map/l;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 201
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/am;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    return-void
.end method

.method public setMapRenderStableListener(Lcom/baidu/platform/comapi/map/ac;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->i:Lcom/baidu/platform/comapi/map/ac;

    return-void
.end method

.method public setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setMapTo2D(Z)V
    .locals 0

    return-void
.end method

.method public setOnLongPressListener(Lcom/baidu/platform/comapi/map/OnLongPressListener;)V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/am;->a(Lcom/baidu/platform/comapi/map/OnLongPressListener;)V

    return-void
.end method

.method public setOverlooking(I)V
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1120
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    .line 1121
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setPixelFormatTransparent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setRenderMode(I)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->setRenderMode(I)V

    return-void
.end method

.method public bridge synthetic setRenderer(Lcom/baidu/platform/comapi/map/aq;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->setRenderer(Lcom/baidu/platform/comapi/map/aq;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1102
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 1103
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setSatellite(Z)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 890
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 892
    :cond_0
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/t;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/t;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setStreetRoad(Z)V
    .locals 1

    .line 1254
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1255
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    .line 1257
    :cond_0
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/w;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/w;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setTraffic(Z)V
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    .line 929
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 931
    :cond_1
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/v;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/v;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setWinRound(Lcom/baidu/platform/comapi/map/MapStatus$WinRound;)V
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1138
    iput-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 1139
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setZoomLevel(F)V
    .locals 3

    .line 1061
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    .line 1066
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getFocusedBaseIndoorMapInfo()Lcom/baidu/platform/comapi/map/IndoorMapInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    :cond_1
    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    const/high16 p1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    move p1, v0

    .line 1076
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1078
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/16 p1, 0x12c

    .line 1079
    invoke-virtual {p0, v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->animateTo(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_4
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 0

    int-to-float p1, p1

    .line 1085
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setZoomLevel(F)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    iput p3, v0, Lcom/baidu/platform/comapi/map/p;->a:I

    .line 265
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    iput p4, v0, Lcom/baidu/platform/comapi/map/p;->b:I

    .line 266
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    iput v1, v0, Lcom/baidu/platform/comapi/map/p;->c:I

    .line 268
    :cond_1
    iput p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 269
    iput p4, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/aj;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 273
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p1, :cond_4

    .line 274
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 276
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput v1, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    .line 277
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput v1, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    .line 278
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput p4, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    .line 279
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput p3, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    .line 280
    iget-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    if-nez p2, :cond_2

    .line 281
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;Z)V

    goto :goto_0

    .line 283
    :cond_2
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 284
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;II)V

    .line 286
    :goto_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 287
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;->onSurfaceChanged(II)V

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 292
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 293
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 294
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    invoke-virtual {p2, v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setScreenSize(II)V

    .line 296
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 297
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 298
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->resizeScreen(II)V

    .line 302
    :cond_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz p1, :cond_5

    .line 303
    iget p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    iget p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(II)V

    :cond_5
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    if-eqz p1, :cond_1

    .line 326
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 337
    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/aj;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/baidu/platform/comapi/map/aj;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchOverlay(Lcom/baidu/platform/comapi/map/Overlay;Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 707
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 714
    :cond_1
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    iget-wide p1, p2, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public unInit()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/al;

    if-eqz v2, :cond_0

    .line 724
    invoke-interface {v2}, Lcom/baidu/platform/comapi/map/al;->d()V

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->L()V

    .line 729
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/d;

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->unInit()V

    .line 732
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 733
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/af;->a()V

    .line 734
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/af;

    .line 735
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/l;

    .line 736
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/p;

    .line 737
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    const-string v1, "BasicMap surfaceView unInit"

    .line 739
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
