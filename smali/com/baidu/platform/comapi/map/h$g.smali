.class Lcom/baidu/platform/comapi/map/h$g;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "GLThreadManager"

.field private static final b:Ljava/lang/Class;

.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/baidu/platform/comapi/map/h$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 1678
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/h$g;->b:Ljava/lang/Class;

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 1679
    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/h$g;->c:Ljava/lang/reflect/Method;

    .line 1680
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1682
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platform/comapi/map/i;)V
    .locals 0

    .line 1592
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h$g;-><init>()V

    return-void
.end method

.method private c()V
    .locals 6

    .line 1687
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1689
    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/map/h$g;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.opengles.version"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1690
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1689
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/baidu/platform/comapi/map/h$g;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x10000

    .line 1693
    iput v1, p0, Lcom/baidu/platform/comapi/map/h$g;->e:I

    .line 1698
    :goto_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/h$g;->e:I

    const/high16 v2, 0x20000

    if-lt v1, v2, :cond_0

    .line 1699
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z

    .line 1702
    :cond_0
    sget-object v1, Lcom/baidu/platform/comapi/map/h$g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkGLESVersion mGLESVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/platform/comapi/map/h$g;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMultipleGLESContextsAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->d:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/baidu/platform/comapi/map/h$f;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/h$f;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1599
    invoke-static {p1, v0}, Lcom/baidu/platform/comapi/map/h$f;->a(Lcom/baidu/platform/comapi/map/h$f;Z)Z

    .line 1600
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1601
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    .line 1603
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 1657
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->f:Z

    if-nez v0, :cond_3

    .line 1658
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h$g;->c()V

    const/16 v0, 0x1f01

    .line 1659
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 1660
    iget v0, p0, Lcom/baidu/platform/comapi/map/h$g;->e:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "Q3Dimension MSM7500 "

    .line 1661
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z

    .line 1662
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1664
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/h$g;->h:Z

    .line 1666
    sget-object v0, Lcom/baidu/platform/comapi/map/h$g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGLDriver renderer = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" multipleContextsAllowed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mLimitedGLESContexts = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$g;->h:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/h$g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1671
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 1648
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 1652
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h$g;->c()V

    .line 1653
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/baidu/platform/comapi/map/h$f;)Z
    .locals 2

    .line 1614
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 1619
    :cond_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/h$g;->c()V

    .line 1620
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/h$g;->g:Z

    if-eqz p1, :cond_1

    return v1

    .line 1627
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    if-eqz p1, :cond_2

    .line 1628
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/h$f;->i()V

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1615
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    .line 1616
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method

.method public c(Lcom/baidu/platform/comapi/map/h$f;)V
    .locals 1

    .line 1638
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1639
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/h$g;->i:Lcom/baidu/platform/comapi/map/h$f;

    .line 1641
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
