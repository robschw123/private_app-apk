.class Lcom/baidu/location/c/e$c;
.super Landroid/location/GnssStatus$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$c;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 13

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/baidu/location/c/e;->f(Lcom/baidu/location/c/e;J)J

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->g(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->j(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v0, :cond_7

    add-int/lit8 v4, v4, 0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v7

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v7, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v7, v5, :cond_3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v5}, Lcom/baidu/location/c/e;->g(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v5

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/4 v5, 0x5

    if-ne v7, v5, :cond_4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v5}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    if-ne v7, v5, :cond_5

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v5}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x6

    if-ne v7, v5, :cond_6

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v5}, Lcom/baidu/location/c/e;->j(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->g(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->j(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {v0, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;ZZZZZF)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->k(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->c(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/c/e;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;ZZZZZF)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->d(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v12}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;ZZZZZF)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->l(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->c(Lcom/baidu/location/c/e;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/c/e;->c:Ljava/lang/String;

    sput v2, Lcom/baidu/location/c/e;->a:I

    invoke-static {v3}, Lcom/baidu/location/c/e;->a(I)I

    invoke-static {v4}, Lcom/baidu/location/c/e;->f(I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->a(J)J

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->i(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p1, v0, v5, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/baidu/location/c/e;->b(I)I

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->j(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0, v5, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/baidu/location/c/e;->c(I)I

    iget-object p1, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->h(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0, v5, v1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Ljava/util/ArrayList;ZF)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/baidu/location/c/e;->d(I)I

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/c/e;->b(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/c/e$c;->a:Lcom/baidu/location/c/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Z)V

    sput v2, Lcom/baidu/location/c/e;->a:I

    invoke-static {v2}, Lcom/baidu/location/c/e;->a(I)I

    invoke-static {v2}, Lcom/baidu/location/c/e;->b(I)I

    invoke-static {v2}, Lcom/baidu/location/c/e;->c(I)I

    invoke-static {v2}, Lcom/baidu/location/c/e;->d(I)I

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/baidu/location/c/e;->e(I)I

    invoke-static {v1}, Lcom/baidu/location/c/e;->d(Landroid/location/Location;)Landroid/location/Location;

    return-void
.end method
