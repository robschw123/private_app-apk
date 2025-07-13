.class public final Lcom/baidu/mapapi/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "LatLngBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->g:Z

    return-void
.end method

.method private a(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 128
    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 129
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a:D

    cmpg-double p1, v0, v4

    if-gez p1, :cond_1

    .line 130
    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a:D

    .line 132
    :cond_1
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->b:D

    cmpl-double p1, v0, v4

    if-lez p1, :cond_2

    .line 133
    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->b:D

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double p1, v2, v0

    if-ltz p1, :cond_5

    .line 137
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    cmpg-double p1, v2, v4

    if-gez p1, :cond_3

    .line 138
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    .line 140
    :cond_3
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    cmpl-double p1, v2, v4

    if-lez p1, :cond_4

    .line 141
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    .line 142
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    cmpl-double p1, v4, v0

    if-nez p1, :cond_4

    .line 143
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    :cond_4
    cmpl-double p1, v2, v0

    if-nez p1, :cond_7

    .line 147
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->e:D

    goto :goto_0

    .line 150
    :cond_5
    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    cmpg-double p1, v2, v0

    if-gez p1, :cond_6

    .line 151
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    .line 153
    :cond_6
    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->e:D

    cmpl-double p1, v2, v0

    if-lez p1, :cond_7

    .line 154
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->e:D

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 11

    .line 40
    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->e:D

    const-wide v2, 0x4076800000000000L    # 360.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    cmpl-double v8, v6, v4

    if-eqz v8, :cond_3

    .line 41
    :cond_0
    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_2

    iget-wide v8, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    .line 50
    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    cmpl-double v4, v0, v6

    if-lez v4, :cond_3

    .line 45
    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    .line 46
    iput-wide v6, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    .line 54
    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    sub-double/2addr v0, v2

    .line 55
    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    .line 56
    iget-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_4

    .line 58
    iput-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    .line 59
    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    .line 63
    :cond_4
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->b:D

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 64
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a:D

    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 65
    new-instance v2, Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-direct {v2, v0, v1}, Lcom/baidu/mapapi/model/LatLngBounds;-><init>(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)V

    return-object v2
.end method

.method public include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->g:Z

    .line 80
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    .line 81
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    goto :goto_0

    .line 83
    :cond_1
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->e:D

    .line 85
    :goto_0
    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->b:D

    .line 88
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a(Lcom/baidu/mapapi/model/LatLng;)V

    return-object p0
.end method

.method public include(Ljava/util/List;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/model/LatLngBounds$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->g:Z

    if-eqz v1, :cond_2

    .line 104
    iput-boolean v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->g:Z

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_1

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iput-wide v1, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->c:D

    iput-wide v1, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->d:D

    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iput-wide v1, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->f:D

    iput-wide v1, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->e:D

    .line 110
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a:D

    iput-wide v0, p0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->b:D

    .line 112
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 113
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->a(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-object p0
.end method
