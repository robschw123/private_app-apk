.class public Lcom/baidu/platform/comapi/map/MapStatus;
.super Ljava/lang/Object;
.source "MapStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapStatus$WinRound;,
        Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;
    }
.end annotation


# instance fields
.field public animationTime:I

.field public animationType:I

.field public bOverlookSpringback:Z

.field public bfpp:Z

.field public centerPtX:D

.field public centerPtY:D

.field public centerPtZ:D

.field public geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

.field public hasAnimation:I

.field public isBirdEye:Z

.field public level:F

.field public minOverlooking:I

.field public overlooking:I

.field public panoId:Ljava/lang/String;

.field public roadOffsetX:F

.field public roadOffsetY:F

.field public rotation:I

.field public streetExt:I

.field public streetIndicateAngle:F

.field public winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

.field public xOffset:F

.field public xScreenOffset:F

.field public yOffset:F

.field public yScreenOffset:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->animationType:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 193
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/4 v1, -0x1

    .line 194
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 195
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 196
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 197
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-wide/16 v2, 0x0

    .line 198
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const/4 v2, 0x0

    .line 199
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    .line 200
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    .line 201
    new-instance v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;-><init>()V

    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 202
    new-instance v3, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;-><init>()V

    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    .line 203
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v3, ""

    .line 204
    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    .line 205
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    .line 206
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    .line 207
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    .line 208
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    .line 209
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    .line 210
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    .line 211
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    .line 212
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    .line 213
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->animationType:I

    .line 217
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    .line 218
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 219
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    .line 220
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 221
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 222
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    .line 223
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    .line 224
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    .line 225
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 226
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    .line 227
    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    .line 228
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    .line 229
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    .line 230
    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    .line 231
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    .line 232
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    .line 233
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    .line 234
    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    .line 235
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    .line 236
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    .line 237
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    iput p1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 27
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 34
    :cond_2
    check-cast p1, Lcom/baidu/platform/comapi/map/MapStatus;

    .line 35
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 37
    :cond_3
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 39
    :cond_4
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    iget-boolean v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 43
    :cond_6
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    if-nez v2, :cond_7

    .line 44
    iget-object v2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    if-eqz v2, :cond_8

    return v1

    .line 46
    :cond_7
    iget-object v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 48
    :cond_8
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_9

    return v1

    .line 50
    :cond_9
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    if-eq v2, v3, :cond_a

    return v1

    .line 52
    :cond_a
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    if-eq v2, v3, :cond_b

    return v1

    .line 54
    :cond_b
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    return v1

    .line 56
    :cond_c
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 58
    :cond_d
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    return v1

    .line 61
    :cond_e
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    return v1

    .line 64
    :cond_f
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-nez v2, :cond_10

    .line 65
    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-eqz p1, :cond_11

    return v1

    .line 67
    :cond_10
    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-virtual {v2, p1}, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v1

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 13
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    add-double/2addr v0, v2

    mul-double v0, v0, v2

    .line 14
    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    .line 15
    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    .line 16
    iget-boolean v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    .line 17
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->hashCode()I

    move-result v4

    :goto_0
    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 18
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 19
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 20
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 21
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->hashCode()I

    move-result v5

    :goto_1
    int-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapStatus{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overlooking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", centerPtX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerPtY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerPtZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", winRound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geoRound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bfpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", panoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", streetIndicateAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isBirdEye="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", streetExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roadOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", roadOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xScreenOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yScreenOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
