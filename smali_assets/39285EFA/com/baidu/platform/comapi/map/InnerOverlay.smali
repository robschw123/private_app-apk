.class public abstract Lcom/baidu/platform/comapi/map/InnerOverlay;
.super Lcom/baidu/platform/comapi/map/Overlay;
.source "InnerOverlay.java"


# instance fields
.field private a:Z

.field protected b:Ljava/lang/String;

.field protected c:Landroid/os/Bundle;

.field public mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 22
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 22
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->a:Z

    .line 31
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->setType(I)V

    return-void
.end method

.method public constructor <init>(ILcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 22
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->a:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->setType(I)V

    .line 36
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method


# virtual methods
.method public IsOverlayShow()Z
    .locals 5

    .line 60
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public SetMapParam(JLcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    .line 41
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method

.method public SetOverlayShow(Z)V
    .locals 6

    .line 45
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v4, v5, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 53
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowLayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " tag:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getLayerTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InnerOverlay"

    .line 54
    invoke-static {v0, p1}, Lcom/baidu/platform/comapi/map/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public UpdateOverlay()V
    .locals 6

    .line 65
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 76
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateLayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getLayerTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InnerOverlay"

    .line 77
    invoke-static {v1, v0}, Lcom/baidu/platform/comapi/map/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addedToMapView()Z
    .locals 9

    .line 222
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 227
    :cond_0
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getUpdateType()I

    move-result v6

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getUpdateTimeInterval()I

    move-result v7

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getLayerTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    .line 233
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AddLayer:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mType:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tag:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getLayerTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InnerOverlay"

    .line 234
    invoke-static {v2, v0}, Lcom/baidu/platform/comapi/map/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_2
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->a:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    .line 245
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getDefaultShowStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->SetOverlayShow(Z)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public clear()V
    .locals 5

    .line 123
    sget-boolean v0, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 126
    :goto_0
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 127
    iput-object v2, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v2, :cond_1

    .line 129
    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 133
    :cond_1
    sget-boolean v2, Lcom/baidu/platform/comapi/map/z;->a:Z

    if-eqz v2, :cond_2

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClearLayer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->getLayerTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InnerOverlay"

    .line 134
    invoke-static {v1, v0}, Lcom/baidu/platform/comapi/map/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultShowStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayerTag()Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    return-object v0
.end method

.method public getParam()Landroid/os/Bundle;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mType:I

    return v0
.end method

.method public getUpdateTimeInterval()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUpdateType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setClickAble(Z)V
    .locals 5

    .line 205
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->a:Z

    .line 206
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 210
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setFocus(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;->setFocus(IZLjava/lang/String;)V

    return-void
.end method

.method public setFocus(IZLjava/lang/String;)V
    .locals 12

    .line 183
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 187
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "uid"

    .line 188
    invoke-virtual {v11, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v6, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mLayerID:J

    int-to-long v8, p1

    move v10, p2

    invoke-virtual/range {v5 .. v11}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetFocus(JJZLandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setParam(Landroid/os/Bundle;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->c:Landroid/os/Bundle;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/baidu/platform/comapi/map/InnerOverlay;->mType:I

    return-void
.end method
