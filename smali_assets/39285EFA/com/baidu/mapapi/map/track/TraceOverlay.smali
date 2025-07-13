.class public Lcom/baidu/mapapi/map/track/TraceOverlay;
.super Ljava/lang/Object;
.source "TraceOverlay.java"


# instance fields
.field a:I

.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:Z

.field g:I

.field h:Z

.field public mListener:Lcom/baidu/mapsdkplatform/comapi/map/a/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xfcc7a01

    .line 14
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->a:I

    const/16 v0, 0xe

    .line 15
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->b:I

    const/16 v0, 0x12c

    .line 17
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->d:I

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->e:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->mListener:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

    invoke-interface {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/b;->c(Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    return-void
.end method

.method public getAnimationDuration()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->e:I

    return v0
.end method

.method public getAnimationTime()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->d:I

    return v0
.end method

.method public getAnimationType()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->g:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->a:I

    return v0
.end method

.method public getLatLngBounds()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Ljava/util/List;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 169
    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->c:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->b:I

    return v0
.end method

.method public isAnimate()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->f:Z

    return v0
.end method

.method public isTrackMove()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->h:Z

    return v0
.end method

.method public remove()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->mListener:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

    invoke-interface {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/b;->a(Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    return-void
.end method

.method public setAnimate(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->f:Z

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->e:I

    return-void
.end method

.method public setAnimationTime(I)V
    .locals 1

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_0

    .line 120
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->d:I

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: Not less than 300 milliseconds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->a:I

    return-void
.end method

.method public setTraceAnimationType(Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;)V
    .locals 0

    if-nez p1, :cond_0

    .line 75
    sget-object p1, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveLinear:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->g:I

    return-void
.end method

.method public setTracePoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->c:Ljava/util/List;

    return-void
.end method

.method public setTrackMove(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->h:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->b:I

    return-void
.end method

.method public update()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOverlay;->mListener:Lcom/baidu/mapsdkplatform/comapi/map/a/b;

    invoke-interface {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/a/b;->b(Lcom/baidu/mapapi/map/track/TraceOverlay;)V

    return-void
.end method
