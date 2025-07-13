.class public final Lcom/baidu/mapapi/map/Marker;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Marker.java"


# instance fields
.field A:Lcom/baidu/mapapi/map/InfoWindow$a;

.field B:Z

.field C:I

.field D:I

.field E:I

.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:F

.field d:F

.field e:Z

.field f:Z

.field g:F

.field h:Ljava/lang/String;

.field i:I

.field j:Z

.field k:Z

.field l:F

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field t:I

.field u:Lcom/baidu/mapapi/animation/Animation;

.field v:F

.field w:F

.field x:F

.field y:Landroid/graphics/Point;

.field z:Lcom/baidu/mapapi/map/InfoWindow;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->j:Z

    .line 37
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->k:Z

    .line 40
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->n:Z

    const/4 v1, 0x1

    .line 41
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->o:Z

    .line 42
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    .line 44
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    const/16 v1, 0x14

    .line 49
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->t:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->v:F

    .line 55
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->w:F

    .line 57
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->x:F

    .line 65
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->B:Z

    const v0, 0x7fffffff

    .line 67
    iput v0, p0, Lcom/baidu/mapapi/map/Marker;->C:I

    const/4 v0, 0x4

    .line 69
    iput v0, p0, Lcom/baidu/mapapi/map/Marker;->D:I

    const/16 v0, 0x16

    .line 70
    iput v0, p0, Lcom/baidu/mapapi/map/Marker;->E:I

    .line 74
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->c:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Marker;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 1

    .line 652
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getBitmapDescriptor()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 653
    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 654
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 655
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    .line 656
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 657
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getYOffset()I

    move-result v0

    iput v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 658
    iget-boolean v0, p2, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    .line 659
    iget-object p2, p2, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    iput-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 838
    new-instance v3, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v3}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 839
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 840
    iget-object v1, v1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 841
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v5, v5, v6

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 842
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 843
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const-string v6, "image_data"

    .line 844
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 845
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const-string v7, "image_width"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 846
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-string v6, "image_height"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :try_start_0
    const-string v6, "MD5"

    .line 850
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 852
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_1

    .line 856
    array-length v6, v5

    invoke-virtual {v1, v5, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 857
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 858
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 860
    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 863
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_hashcode"

    .line 864
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_1
    invoke-virtual {v3, v4}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 868
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 871
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 872
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    .line 873
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 874
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comjni/tools/ParcelItem;

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-string v0, "icons"

    .line 877
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 792
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 794
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v1, :cond_0

    .line 795
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "image_info"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 799
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->m:I

    const-string v3, "animatetype"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    const-string v4, "location_x"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 801
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v1

    const-string v3, "location_y"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 802
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->e:Z

    const-string v2, "perspective"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 803
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->c:F

    const-string v2, "anchor_x"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 804
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->d:F

    const-string v2, "anchor_y"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 805
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->g:F

    const-string v2, "rotate"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 806
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->i:I

    const-string/jumbo v2, "y_offset"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->j:Z

    const-string v2, "isflat"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->k:Z

    const-string v2, "istop"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->t:I

    const-string v2, "period"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->l:F

    const-string v2, "alpha"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 811
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->r:I

    const-string v2, "m_height"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 812
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->v:F

    const-string v2, "scaleX"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 813
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->w:F

    const-string v2, "scaleY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 814
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->o:Z

    const-string v2, "isClickable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->C:I

    const-string v2, "priority"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    const-string v2, "isJoinCollision"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    const-string v2, "isForceDisplay"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 818
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->D:I

    const-string v2, "startLevel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 819
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->E:I

    const-string v2, "endLevel"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 820
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->y:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    .line 821
    iget v1, v1, Landroid/graphics/Point;->x:I

    const-string v2, "fix_x"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->y:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const-string v2, "fix_y"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 825
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->n:Z

    const-string v2, "isfixed"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 826
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 827
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/baidu/mapapi/map/Marker;->a(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    :cond_2
    const-string v1, "param"

    .line 830
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public cancelAnimation()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->u:Lcom/baidu/mapapi/animation/Animation;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, v0, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 182
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->l:F

    return v0
.end method

.method public getAnchorX()F
    .locals 1

    .line 324
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->c:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 333
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->d:F

    return v0
.end method

.method public getEndLevel()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->E:I

    return v0
.end method

.method public getFixedPosition()Landroid/graphics/Point;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->y:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoWindow()Lcom/baidu/mapapi/map/InfoWindow;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->t:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 527
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->C:I

    return v0
.end method

.method public getRotate()F
    .locals 1

    .line 356
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->g:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 505
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->x:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 459
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->v:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 482
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->w:F

    return v0
.end method

.method public getStartLevel()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->D:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getYOffset()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->i:I

    return v0
.end method

.method public hideInfoWindow()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/map/InfoWindow$a;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    const/4 v0, 0x0

    .line 728
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->B:Z

    :cond_0
    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    return-void
.end method

.method public isClickable()Z
    .locals 1

    .line 635
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->o:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->f:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->n:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->j:Z

    return v0
.end method

.method public isForceDisplay()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    return v0
.end method

.method public isInfoWindowEnabled()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->B:Z

    return v0
.end method

.method public isJoinCollision()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->e:Z

    return v0
.end method

.method public setAlpha(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->l:F

    .line 175
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 170
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->l:F

    return-void
.end method

.method public setAnchor(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    goto :goto_0

    .line 313
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->c:F

    .line 314
    iput p2, p0, Lcom/baidu/mapapi/map/Marker;->d:F

    .line 315
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnimateType(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->m:I

    .line 98
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setAnimation(Lcom/baidu/mapapi/animation/Animation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 414
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->u:Lcom/baidu/mapapi/animation/Animation;

    .line 415
    iget-object v0, p1, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimation(Lcom/baidu/mapapi/animation/Animation;Landroid/animation/TypeEvaluator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->u:Lcom/baidu/mapapi/animation/Animation;

    .line 428
    iget-object v0, p1, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/animation/TypeEvaluator;)V

    .line 429
    iget-object p2, p0, Lcom/baidu/mapapi/map/Marker;->u:Lcom/baidu/mapapi/animation/Animation;

    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {p2, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 625
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->o:Z

    .line 626
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 268
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->f:Z

    .line 269
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setEndLevel(I)V
    .locals 0

    .line 558
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->E:I

    .line 559
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFixedScreenPosition(Landroid/graphics/Point;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 605
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->y:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 606
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->n:Z

    .line 607
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 602
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the screenPosition can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlat(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->j:Z

    .line 297
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setForceDisplay(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    .line 583
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 88
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIcons(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 125
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    goto :goto_2

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 128
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v0, v0, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    .line 133
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 137
    :goto_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 117
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icons can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public setJoinCollision(Z)V
    .locals 0

    .line 570
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    .line 571
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 159
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->t:I

    .line 160
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s period must be greater than zero "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPerspective(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->e:Z

    .line 250
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 214
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositionWithInfoWindow(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 227
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 228
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    .line 229
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_0
    return-void

    .line 224
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPriority(I)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->C:I

    .line 536
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setRotate(F)V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    rem-float/2addr p1, v1

    .line 346
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->g:F

    .line 347
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 518
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->v:F

    .line 519
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->w:F

    .line 520
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 472
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->v:F

    .line 473
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 495
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->w:F

    .line 496
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setStartLevel(I)V
    .locals 0

    .line 549
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->D:I

    .line 550
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->h:Ljava/lang/String;

    return-void
.end method

.method public setToTop()V
    .locals 1

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->k:Z

    .line 200
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setYOffset(I)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->i:I

    .line 404
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 671
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-nez v0, :cond_0

    .line 672
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    goto :goto_0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz v1, :cond_1

    .line 676
    invoke-interface {v1, v0}, Lcom/baidu/mapapi/map/InfoWindow$a;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Marker;->a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 680
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz p1, :cond_2

    .line 681
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    const/4 p1, 0x1

    .line 682
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->B:Z

    :cond_2
    return-void

    .line 669
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the InfoWindow can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showSmoothMoveInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 700
    :cond_0
    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v0, :cond_4

    .line 703
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 707
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-nez v0, :cond_1

    .line 708
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    goto :goto_0

    .line 710
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Marker;->a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 713
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    .line 715
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->A:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz p1, :cond_2

    .line 716
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 717
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->B:Z

    :cond_2
    return-void

    .line 704
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the SmoothMoveInfoWindow\'s View can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 701
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the SmoothMoveInfoWindow must build with View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAnimation()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->u:Lcom/baidu/mapapi/animation/Animation;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, v0, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a()V

    :cond_0
    return-void
.end method

.method public updateInfoWindowBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/baidu/mapapi/map/InfoWindow;->l:Z

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method public updateInfoWindowPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public updateInfoWindowView(Landroid/view/View;)V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateInfoWindowYOffset(I)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setYOffset(I)V

    :cond_0
    return-void
.end method
