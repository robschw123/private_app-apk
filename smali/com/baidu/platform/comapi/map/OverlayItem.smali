.class public Lcom/baidu/platform/comapi/map/OverlayItem;
.super Ljava/lang/Object;
.source "OverlayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/OverlayItem$AnimationSubType;,
        Lcom/baidu/platform/comapi/map/OverlayItem$AnimEffect;,
        Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTON:I = 0x2

.field public static final ALIGN_TOP:I = 0x3

.field public static final ALING_CENTER:I = 0x1


# instance fields
.field protected a:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Ljava/lang/String;

.field private i:Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;

.field private j:F

.field private k:F

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/Bundle;

.field private n:Landroid/os/Bundle;

.field private o:F

.field private p:[B

.field private q:F

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;->CoordType_BD09:Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->i:Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;

    .line 167
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->a:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 168
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->b:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->g:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->r:I

    const/4 p1, 0x2

    .line 172
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->d:I

    const-string p1, ""

    .line 173
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->h:Ljava/lang/String;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 176
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->j:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 177
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->k:F

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->l:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addClickRect(Landroid/os/Bundle;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->l:Ljava/util/ArrayList;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAnchorX()F
    .locals 1

    .line 336
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->j:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 345
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->k:F

    return v0
.end method

.method public getAnimate()Landroid/os/Bundle;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public getBound()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->d:I

    return v0
.end method

.method public getClickRect()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCoordType()Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->i:Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;

    return-object v0
.end method

.method public getDelay()Landroid/os/Bundle;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGeoZ()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->o:F

    return v0
.end method

.method public getGifData()[B
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->p:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorPoi()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->s:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->e:I

    return v0
.end method

.method public final getMarker()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMask()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->f:I

    return v0
.end method

.method public getMultiplyDpi()F
    .locals 1

    .line 514
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->r:I

    int-to-float v0, v0

    return v0
.end method

.method public getPoint()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->a:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/OverlayItem;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 506
    iget v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->q:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAnchor(FF)V
    .locals 0

    .line 304
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->j:F

    .line 305
    iput p2, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->k:F

    return-void
.end method

.method public setAnchor(I)V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 319
    invoke-virtual {p0, v1, p1}, Lcom/baidu/platform/comapi/map/OverlayItem;->setAnchor(FF)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 322
    invoke-virtual {p0, v1, p1}, Lcom/baidu/platform/comapi/map/OverlayItem;->setAnchor(FF)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/baidu/platform/comapi/map/OverlayItem;->setAnchor(FF)V

    :goto_0
    return-void
.end method

.method public setAnimate(Landroid/os/Bundle;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    return-void
.end method

.method public setAnimateDuration(I)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const-string v1, "dur"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAnimateEffect(Lcom/baidu/platform/comapi/map/OverlayItem$AnimEffect;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    .line 415
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/ad;->a:[I

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/OverlayItem$AnimEffect;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "type"

    packed-switch p1, :pswitch_data_0

    .line 451
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 447
    :pswitch_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 438
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 435
    :pswitch_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 432
    :pswitch_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 429
    :pswitch_6
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 426
    :pswitch_7
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 423
    :pswitch_8
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 420
    :pswitch_9
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 417
    :pswitch_a
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimateEndSize(II)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const-string v1, "en_w"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const-string v0, "en_h"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAnimateStartSize(II)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const-string v1, "st_w"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const-string v0, "st_h"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setBound(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->d:I

    return-void
.end method

.method public setClickRect(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->l:Ljava/util/ArrayList;

    return-void
.end method

.method public setCoordType(Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->i:Lcom/baidu/platform/comapi/map/OverlayItem$CoordType;

    return-void
.end method

.method public setDelay(Landroid/os/Bundle;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->n:Landroid/os/Bundle;

    return-void
.end method

.method public setGeoPoint(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->a:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    return-void
.end method

.method public setGeoZ(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->o:F

    return-void
.end method

.method public setGifData([B)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->p:[B

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->h:Ljava/lang/String;

    return-void
.end method

.method public setIndoorPoi(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->s:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->e:I

    return-void
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMask(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->f:I

    return-void
.end method

.method public setMultiplyDpi(I)V
    .locals 0

    .line 510
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->r:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 502
    iput p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->q:F

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->c:Ljava/lang/String;

    return-void
.end method

.method public setSubAnimateEffect(Lcom/baidu/platform/comapi/map/OverlayItem$AnimationSubType;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    .line 466
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/ad;->b:[I

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/OverlayItem$AnimationSubType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "sub_type"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/OverlayItem;->b:Ljava/lang/String;

    return-void
.end method
