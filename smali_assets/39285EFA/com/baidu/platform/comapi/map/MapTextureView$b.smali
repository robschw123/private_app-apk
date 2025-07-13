.class Lcom/baidu/platform/comapi/map/MapTextureView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MapTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/MapTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/MapTextureView;


# direct methods
.method private constructor <init>(Lcom/baidu/platform/comapi/map/MapTextureView;)V
    .locals 0

    .line 1033
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/platform/comapi/map/y;)V
    .locals 0

    .line 1033
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapTextureView$b;-><init>(Lcom/baidu/platform/comapi/map/MapTextureView;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1036
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1037
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMapLoadFinish:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget v6, v0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetNearlyObjID(JIII)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v2, ""

    .line 1043
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1045
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_9

    .line 1047
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v1, v2, p1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 1050
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/al;

    if-nez v2, :cond_3

    goto :goto_0

    .line 1056
    :cond_3
    invoke-interface {v2, v0}, Lcom/baidu/platform/comapi/map/al;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1057
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/baidu/platform/comapi/map/MapController;->mHasMapObjDraging:Z

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_2

    .line 1060
    invoke-interface {v2, v1}, Lcom/baidu/platform/comapi/map/al;->c(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    goto :goto_0

    .line 1067
    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1069
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1070
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapTextureView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    return-void

    .line 1076
    :cond_7
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapTextureView$b;->a:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapTextureView;->b:Lcom/baidu/platform/comapi/map/MapController;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/al;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 1082
    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/al;->c(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    goto :goto_1

    :cond_9
    :goto_2
    return-void
.end method
