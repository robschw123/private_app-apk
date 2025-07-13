.class public final Lcom/baidu/mapapi/map/ArcOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "ArcOptions.java"


# static fields
.field private static final d:Ljava/lang/String; = "ArcOptions"


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private e:I

.field private f:I

.field private g:Lcom/baidu/mapapi/model/LatLng;

.field private h:Lcom/baidu/mapapi/model/LatLng;

.field private i:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 14
    iput v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    const/4 v0, 0x5

    .line 15
    iput v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 119
    new-instance v0, Lcom/baidu/mapapi/map/Arc;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Arc;-><init>()V

    .line 120
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Arc;->H:Z

    .line 121
    iget v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Arc;->G:I

    .line 122
    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->I:Landroid/os/Bundle;

    .line 123
    iget v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/Arc;->a:I

    .line 124
    iget v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    iput v1, v0, Lcom/baidu/mapapi/map/Arc;->b:I

    .line 125
    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 126
    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->h:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 127
    iget-object v1, p0, Lcom/baidu/mapapi/map/ArcOptions;->i:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public color(I)Lcom/baidu/mapapi/map/ArcOptions;
    .locals 0

    .line 73
    iput p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/ArcOptions;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->e:I

    return v0
.end method

.method public getEndPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->i:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMiddlePoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->h:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getStartPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->a:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    return v0
.end method

.method public points(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/ArcOptions;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eq p1, p2, :cond_0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    .line 97
    iput-object p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->g:Lcom/baidu/mapapi/model/LatLng;

    .line 98
    iput-object p2, p0, Lcom/baidu/mapapi/map/ArcOptions;->h:Lcom/baidu/mapapi/model/LatLng;

    .line 99
    iput-object p3, p0, Lcom/baidu/mapapi/map/ArcOptions;->i:Lcom/baidu/mapapi/model/LatLng;

    return-object p0

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: start and middle and end points can not be same"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: start and middle and end points can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/ArcOptions;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->b:Z

    return-object p0
.end method

.method public width(I)Lcom/baidu/mapapi/map/ArcOptions;
    .locals 0

    if-lez p1, :cond_0

    .line 112
    iput p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->f:I

    :cond_0
    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/ArcOptions;
    .locals 0

    .line 164
    iput p1, p0, Lcom/baidu/mapapi/map/ArcOptions;->a:I

    return-object p0
.end method
