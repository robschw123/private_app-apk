.class public Lcom/baidu/mapapi/map/InfoWindow;
.super Ljava/lang/Object;
.source "InfoWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/InfoWindow$a;,
        Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:Landroid/view/View;

.field d:Lcom/baidu/mapapi/model/LatLng;

.field e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

.field f:Lcom/baidu/mapapi/map/InfoWindow$a;

.field g:I

.field h:Z

.field i:I

.field j:Z

.field k:Z

.field l:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/baidu/mapapi/model/LatLng;I)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->h:Z

    .line 54
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    .line 59
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    .line 64
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    .line 69
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->l:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 85
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 86
    iput-object p2, p0, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 87
    iput p3, p0, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: view and position can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/View;Lcom/baidu/mapapi/model/LatLng;IZI)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->h:Z

    .line 54
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    .line 59
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    .line 64
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    .line 69
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->l:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 130
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 131
    iput-object p2, p0, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 132
    iput p3, p0, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 133
    iput-boolean p4, p0, Lcom/baidu/mapapi/map/InfoWindow;->h:Z

    .line 134
    iput p5, p0, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: view and position can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->h:Z

    .line 54
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    .line 59
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    .line 64
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    .line 69
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->l:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 105
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 106
    iput-object p2, p0, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 107
    iput-object p4, p0, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    .line 108
    iput p3, p0, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->l:Z

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: bitmapDescriptor and position can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBitmapDescriptor()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    return-object v0
.end method

.method public getYOffset()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    return v0
.end method

.method public setBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 179
    iget-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->f:Lcom/baidu/mapapi/map/InfoWindow$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 155
    iget-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->f:Lcom/baidu/mapapi/map/InfoWindow$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 203
    iget-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->f:Lcom/baidu/mapapi/map/InfoWindow$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    return-void
.end method

.method public setYOffset(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 220
    iget-object p1, p0, Lcom/baidu/mapapi/map/InfoWindow;->f:Lcom/baidu/mapapi/map/InfoWindow$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    return-void
.end method
