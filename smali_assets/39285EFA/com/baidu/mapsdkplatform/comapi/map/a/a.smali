.class public Lcom/baidu/mapsdkplatform/comapi/map/a/a;
.super Lcom/baidu/platform/comapi/map/InnerOverlay;
.source "TraceInnerOverlay.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x24

    .line 30
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(I)V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    .line 24
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->e:I

    .line 25
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->f:I

    .line 26
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->g:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    .line 131
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->UpdateOverlay()V

    return-void
.end method

.method public a(ZIII)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    .line 136
    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->e:I

    .line 137
    iput p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->f:I

    .line 138
    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->g:I

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/j;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 49
    monitor-exit v0

    return p1

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    .line 52
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 121
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getData()Ljava/lang/String;
    .locals 5

    .line 80
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 83
    monitor-exit v0

    return-object v1

    .line 85
    :cond_0
    new-instance v1, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 86
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "dataset"

    .line 87
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 88
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/j;

    .line 89
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->objectValue(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "startValue"

    .line 93
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "endValue"

    .line 94
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 95
    iget-boolean v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    if-eqz v2, :cond_2

    const-string v2, "isNeedRouteAnimate"

    .line 96
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "durationTime"

    .line 97
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->e:I

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "delayTime"

    .line 98
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->f:I

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "easingCurve"

    .line 99
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    iget v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->g:I

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 102
    iput-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->d:Z

    goto :goto_1

    :cond_2
    const-string v2, "isNeedRouteAnimate"

    .line 104
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "durationTime"

    .line 105
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "delayTime"

    .line 106
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "easingCurve"

    .line 107
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 109
    :goto_1
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 110
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->setData(Ljava/lang/String;)V

    .line 111
    iput-boolean v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    .line 112
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 114
    :cond_3
    :goto_2
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->setData(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/a/a;->h:Z

    return-void
.end method
