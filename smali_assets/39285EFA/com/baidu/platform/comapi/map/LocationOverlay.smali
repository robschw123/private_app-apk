.class public Lcom/baidu/platform/comapi/map/LocationOverlay;
.super Lcom/baidu/platform/comapi/map/InnerOverlay;
.source "LocationOverlay.java"


# instance fields
.field private a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    .line 25
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 1

    const/4 v0, 0x7

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(ILcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    .line 30
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method


# virtual methods
.method public beginLocationLayerAnimation()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->BeginLocationLayerAnimation()V

    return-void
.end method

.method public clearLocationLayerData(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    const-string v2, "locationaddr"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 96
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public getDefaultShowStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLayerTag()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method public setLocationLayerData(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/OverlayLocationData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 53
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    const-string v3, "locationaddr"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 57
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    .line 58
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 61
    :cond_1
    new-instance v5, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v5}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 62
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 63
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 66
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 67
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v8, "imgbin"

    .line 68
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgWidth()I

    move-result v8

    const-string/jumbo v9, "w"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgHeight()I

    move-result v8

    const-string v9, "h"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->isRotation()I

    move-result v8

    const-string v9, "rotation"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v7}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 76
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    .line 78
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comjni/tools/ParcelItem;

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "imagedata"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLocationLayerData(Landroid/os/Bundle;)V

    :cond_5
    :goto_2
    return-void
.end method
