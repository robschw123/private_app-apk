.class public final Lcom/baidu/mapapi/map/TextOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "TextOptions.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/mapapi/model/LatLng;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:I

.field private k:I

.field private l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 44
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->g:I

    const/16 v0, 0xc

    .line 46
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    const/4 v0, 0x4

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->j:I

    const/16 v0, 0x20

    .line 52
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 244
    new-instance v0, Lcom/baidu/mapapi/map/Text;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Text;-><init>()V

    .line 245
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Text;->H:Z

    .line 246
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->G:I

    .line 247
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->I:Landroid/os/Bundle;

    .line 248
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    .line 250
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->f:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->c:I

    .line 251
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->g:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->d:I

    .line 252
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->e:I

    .line 253
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->i:Landroid/graphics/Typeface;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    .line 254
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->j:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->g:I

    .line 255
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->h:I

    .line 256
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->l:F

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->i:F

    return-object v0
.end method

.method public align(II)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 225
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->j:I

    .line 226
    iput p2, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    return-object p0
.end method

.method public bgColor(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 175
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->f:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public fontColor(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 187
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->g:I

    return-object p0
.end method

.method public fontSize(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 199
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    return-object p0
.end method

.method public getAlignX()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->j:I

    int-to-float v0, v0

    return v0
.end method

.method public getAlignY()F
    .locals 1

    .line 125
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    int-to-float v0, v0

    return v0
.end method

.method public getBgColor()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->f:I

    return v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFontColor()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->g:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->l:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->i:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->a:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    return v0
.end method

.method public position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object p0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotate(F)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 238
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->l:F

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->d:Ljava/lang/String;

    return-object p0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: text can not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->i:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 291
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->a:I

    return-object p0
.end method
