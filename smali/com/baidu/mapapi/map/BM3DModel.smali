.class public final Lcom/baidu/mapapi/map/BM3DModel;
.super Lcom/baidu/mapapi/map/Overlay;
.source "BM3DModel.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:F

.field e:Z

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    .line 27
    sget-object v0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->BM3DModelTypeObj:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 32
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->m:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 240
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 241
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    const-string v1, "modelPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    const-string v1, "modelName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    .line 252
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    const-string v3, "location_x"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 254
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 255
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->ordinal()I

    move-result v0

    const-string v1, "modelType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    const-string v1, "scale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 257
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    const-string/jumbo v1, "zoomFixed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    const-string v1, "rotateX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 259
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    const-string v1, "rotateY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 260
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    const-string v1, "rotateZ"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 261
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    const-string v1, "offsetX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 262
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    const-string v1, "offsetY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 263
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    const-string v1, "offsetZ"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p1

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel mPosition can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel mModelName can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelPath can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBM3DModelType()Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getModelPath()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    .line 209
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 218
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    return v0
.end method

.method public getOffsetZ()F
    .locals 1

    .line 227
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotateX()F
    .locals 1

    .line 182
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    return v0
.end method

.method public getRotateZ()F
    .locals 1

    .line 200
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    return v0
.end method

.method public isZoomFixed()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    return v0
.end method

.method public setBM3DModelType(Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 128
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelName can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setModelPath(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    .line 45
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelPath can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffset(FFF)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    .line 117
    iput p2, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    .line 118
    iput p3, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    .line 119
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 71
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotate(FFF)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    .line 103
    iput p2, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    .line 104
    iput p3, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    .line 105
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    .line 81
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setZoomFixed(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    .line 91
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
