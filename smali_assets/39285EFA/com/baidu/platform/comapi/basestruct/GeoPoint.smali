.class public Lcom/baidu/platform/comapi/basestruct/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    .line 25
    iput-wide p3, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-double v0, p1

    .line 19
    iput-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    int-to-double p1, p2

    .line 20
    iput-wide p1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    check-cast p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v3, p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    iget-wide v5, p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    sub-double/2addr v1, v5

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    return-wide v0
.end method

.method public getLatitudeE6()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-wide v0
.end method

.method public getLongitudeE6()D
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLatitude(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    return-void
.end method

.method public setLatitude(I)V
    .locals 2

    int-to-double v0, p1

    .line 70
    iput-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    return-void
.end method

.method public setLatitudeE6(D)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-void
.end method

.method public setLongitude(I)V
    .locals 2

    int-to-double v0, p1

    .line 79
    iput-wide v0, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-void
.end method

.method public setLongitudeE6(D)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoPoint: Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
