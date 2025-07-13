.class public final Lcom/baidu/mapapi/map/Text;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Text.java"


# static fields
.field private static final k:Ljava/lang/String; = "Text"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/baidu/mapapi/model/LatLng;

.field c:I

.field d:I

.field e:I

.field f:Landroid/graphics/Typeface;

.field g:I

.field h:I

.field i:F

.field j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    .line 42
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->e:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Text;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    invoke-static {v0}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->removeFontCache(I)V

    .line 308
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 233
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 234
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    const-string v3, "location_x"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 241
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 243
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->d:I

    ushr-int/lit8 v1, v0, 0x18

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 248
    invoke-static {v1, v0, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const-string v1, "font_color"

    .line 249
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->c:I

    ushr-int/lit8 v1, v0, 0x18

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v0, v0, 0xff

    .line 257
    invoke-static {v1, v0, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const-string v1, "bg_color"

    .line 258
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->e:I

    const-string v1, "font_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->registFontCache(ILandroid/graphics/Typeface;)V

    .line 264
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    const-string v1, "type_face"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->g:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "align_x"

    .line 281
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 283
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->h:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    const-string v0, "align_y"

    .line 297
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 298
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->i:F

    const-string v1, "rotate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 299
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    const-string v1, "update"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 235
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add a text overlay, you must provide text and the position info."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlignX()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->g:I

    int-to-float v0, v0

    return v0
.end method

.method public getAlignY()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->h:I

    int-to-float v0, v0

    return v0
.end method

.method public getBgColor()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->c:I

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->d:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->e:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 123
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->i:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public setAlign(II)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->g:I

    .line 214
    iput p2, p0, Lcom/baidu/mapapi/map/Text;->h:I

    const/4 p1, 0x1

    .line 215
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 216
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->c:I

    const/4 p1, 0x1

    .line 164
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 165
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFontColor(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->d:I

    const/4 p1, 0x1

    .line 176
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 177
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->e:I

    const/4 p1, 0x1

    .line 188
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 189
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 151
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    const/4 p1, 0x1

    .line 152
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 153
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotate(F)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->i:F

    const/4 p1, 0x1

    .line 227
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 228
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 137
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 138
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: text can not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    .line 200
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 201
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
