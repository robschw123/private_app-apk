.class public Lcom/baidu/mapapi/map/MyLocationConfiguration;
.super Ljava/lang/Object;
.source "MyLocationConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;
    }
.end annotation


# instance fields
.field public accuracyCircleFillColor:I

.field public accuracyCircleStrokeColor:I

.field public final customMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field public final enableDirection:Z

.field public final locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x450000

    .line 45
    iput v0, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    const/high16 v0, 0x470000

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    if-nez p1, :cond_0

    .line 97
    sget-object p1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 100
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->enableDirection:Z

    .line 101
    iput-object p3, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->customMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 102
    iget p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->a(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    .line 103
    iget p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->a(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;II)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x450000

    .line 45
    iput v0, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    const/high16 v0, 0x470000

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    if-nez p1, :cond_0

    .line 64
    sget-object p1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    .line 68
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->enableDirection:Z

    .line 69
    iput-object p3, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->customMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 70
    invoke-direct {p0, p4}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->a(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    .line 71
    invoke-direct {p0, p5}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->a(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    return-void
.end method

.method private a(I)I
    .locals 3

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 80
    invoke-static {v0, p1, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method
