.class public final Lcom/baidu/mapapi/map/MapViewLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapViewLayoutParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;,
        Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:Landroid/graphics/Point;

.field c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

.field d:F

.field e:F

.field f:I


# direct methods
.method constructor <init>(IILcom/baidu/mapapi/model/LatLng;Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;III)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 196
    iput-object p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 197
    iput-object p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    .line 198
    iput-object p5, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/high16 p3, 0x3f000000    # 0.5f

    const/high16 p4, 0x3f800000    # 1.0f

    if-eq p6, p1, :cond_2

    const/4 p1, 0x2

    if-eq p6, p1, :cond_1

    const/4 p1, 0x4

    if-eq p6, p1, :cond_0

    .line 210
    iput p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    goto :goto_0

    .line 204
    :cond_0
    iput p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    goto :goto_0

    .line 207
    :cond_1
    iput p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    goto :goto_0

    .line 201
    :cond_2
    iput p2, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    :goto_0
    const/16 p1, 0x8

    if-eq p7, p1, :cond_5

    const/16 p1, 0x10

    if-eq p7, p1, :cond_4

    const/16 p1, 0x20

    if-eq p7, p1, :cond_3

    .line 224
    iput p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    goto :goto_1

    .line 218
    :cond_3
    iput p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    goto :goto_1

    .line 221
    :cond_4
    iput p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    goto :goto_1

    .line 215
    :cond_5
    iput p2, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 227
    :goto_1
    iput p8, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->f:I

    return-void
.end method
