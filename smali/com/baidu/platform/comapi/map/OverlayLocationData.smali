.class public Lcom/baidu/platform/comapi/map/OverlayLocationData;
.super Ljava/lang/Object;
.source "OverlayLocationData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImgHeight()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->d:I

    return v0
.end method

.method public getImgName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImgWidth()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->c:I

    return v0
.end method

.method public isRotation()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->e:I

    return v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImgHeight(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->d:I

    return-void
.end method

.method public setImgName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->a:Ljava/lang/String;

    return-void
.end method

.method public setImgWidth(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->c:I

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayLocationData;->e:I

    return-void
.end method
