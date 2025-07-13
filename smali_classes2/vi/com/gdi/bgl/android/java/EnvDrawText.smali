.class public Lvi/com/gdi/bgl/android/java/EnvDrawText;
.super Ljava/lang/Object;
.source "EnvDrawText.java"


# static fields
.field private static final DEVICE_VIVOX3L:Ljava/lang/String; = "vivo X3L"

.field private static final FONT_STYLE_BOLD:I = 0x1

.field private static final FONT_STYLE_ITALIC:I = 0x2

.field private static final FONT_STYLE_NORMAL:I

.field public static buffer:[I

.field private static defaultFontBmp:Landroid/graphics/Bitmap;

.field public static fontCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lvi/com/gdi/bgl/android/java/a;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized drawText(Ljava/lang/String;II[IIIIII)[I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    const-class v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v7

    .line 128
    :try_start_0
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 129
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 135
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    const-string v13, "vivo X3L"

    .line 136
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    .line 139
    :goto_0
    invoke-virtual {v10}, Landroid/text/TextPaint;->reset()V

    const/4 v13, 0x1

    .line 140
    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 141
    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v14, p1

    int-to-float v14, v14

    .line 142
    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v14, 0x0

    .line 143
    invoke-virtual {v10, v14, v14, v14, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 145
    invoke-static {v11}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v5, :cond_1

    int-to-float v11, v5

    .line 149
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 150
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 151
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 152
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    const/16 v11, 0x5c

    .line 155
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    const/4 v8, -0x1

    const/16 v17, 0x3

    const/high16 v18, -0x1000000

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    if-ne v15, v8, :cond_a

    .line 157
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 158
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v0, v12, v8, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double v13, v13, v19

    double-to-int v8, v13

    .line 159
    :try_start_1
    iget v13, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v14, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 160
    aput v8, v1, v12

    const/4 v14, 0x1

    .line 161
    aput v13, v1, v14

    .line 163
    array-length v14, v1

    const/4 v15, 0x4

    if-ne v14, v15, :cond_2

    int-to-double v14, v8

    .line 164
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    div-double v14, v14, v21

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v8, v14

    int-to-double v14, v8

    move-wide/from16 v11, v19

    .line 165
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-int v8, v14

    int-to-double v13, v13

    .line 166
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    div-double v13, v13, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    int-to-double v13, v13

    .line 167
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v13, v11

    :cond_2
    if-nez v8, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 175
    :cond_4
    :goto_1
    array-length v11, v1

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    const/4 v11, 0x2

    .line 176
    aput v8, v1, v11

    .line 177
    aput v13, v1, v17

    :cond_5
    if-lez v8, :cond_7

    if-lez v13, :cond_7

    .line 181
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v11, 0x0

    new-array v0, v11, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    monitor-exit v7

    return-object v0

    .line 187
    :cond_6
    :try_start_2
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v1

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    :goto_2
    and-int v1, v4, v18

    if-nez v1, :cond_8

    const v1, 0xffffff

    .line 191
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3

    .line 193
    :cond_8
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_3
    if-eqz v5, :cond_9

    int-to-float v1, v5

    .line 200
    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 201
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 202
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 203
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 206
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v3, 0x0

    sub-float v14, v3, v1

    invoke-virtual {v9, v0, v3, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 208
    :cond_9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 211
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v2, 0x0

    sub-float v14, v2, v1

    invoke-virtual {v9, v0, v2, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_4
    move-object/from16 v0, v16

    goto/16 :goto_e

    :cond_a
    add-int/lit8 v8, v15, 0x1

    const/4 v11, 0x0

    .line 215
    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double v11, v11, v19

    double-to-int v11, v11

    const/4 v12, 0x2

    :goto_5
    const/16 v13, 0x5c

    .line 217
    :try_start_3
    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-lez v14, :cond_c

    .line 218
    invoke-virtual {v0, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    float-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v19

    double-to-int v2, v2

    if-le v2, v11, :cond_b

    move v11, v2

    :cond_b
    add-int/lit8 v8, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p4

    move/from16 v3, p5

    goto :goto_5

    .line 223
    :cond_c
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v8, v2, :cond_d

    .line 224
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v19

    double-to-int v2, v2

    if-le v2, v11, :cond_d

    move v11, v2

    .line 227
    :cond_d
    :try_start_5
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 228
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v8

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v3, v13

    mul-int v12, v12, v3

    const/4 v8, 0x0

    .line 231
    aput v11, v1, v8

    const/4 v8, 0x1

    .line 232
    aput v12, v1, v8

    .line 233
    array-length v8, v1

    const/4 v13, 0x4

    if-ne v8, v13, :cond_e

    int-to-double v13, v11

    .line 234
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    div-double v13, v13, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v8, v13

    int-to-double v13, v8

    move-object/from16 p2, v2

    move v8, v3

    move-wide/from16 v2, v19

    .line 235
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-int v11, v13

    int-to-double v12, v12

    .line 236
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v12, v12

    .line 237
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    move v12, v2

    goto :goto_6

    :cond_e
    move-object/from16 p2, v2

    move v8, v3

    :goto_6
    if-nez v11, :cond_10

    if-eqz v12, :cond_f

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    move v13, v12

    .line 243
    :goto_8
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    const/4 v2, 0x2

    .line 244
    aput v11, v1, v2

    .line 245
    aput v13, v1, v17

    :cond_11
    if-lez v11, :cond_13

    if-lez v13, :cond_13

    .line 249
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v3, 0x0

    new-array v0, v3, [I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    monitor-exit v7

    return-object v0

    .line 256
    :cond_12
    :try_start_6
    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v2

    goto :goto_9

    :cond_13
    const/16 v16, 0x0

    :goto_9
    and-int v2, v4, v18

    if-nez v2, :cond_14

    const v2, 0xffffff

    .line 260
    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_a

    .line 262
    :cond_14
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 265
    :goto_a
    invoke-static/range {p8 .. p8}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_15

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_b

    :cond_15
    const/4 v2, 0x2

    if-ne v6, v2, :cond_16

    const/4 v3, 0x0

    .line 274
    aget v1, v1, v3

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    .line 278
    aget v1, v1, v3

    div-int/2addr v1, v2

    :goto_b
    const/16 v2, 0x5c

    const/4 v12, 0x0

    .line 285
    :goto_c
    invoke-virtual {v0, v2, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-lez v4, :cond_18

    .line 286
    invoke-virtual {v0, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-static {v6, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    add-int/lit8 v12, v4, 0x1

    if-eqz v5, :cond_17

    int-to-float v4, v5

    .line 291
    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 292
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 293
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 294
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v4, p5

    .line 295
    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v14, v1

    mul-int v15, v3, v8

    int-to-float v15, v15

    move-object/from16 v2, p2

    move/from16 p2, v11

    .line 297
    iget v11, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v15, v11

    invoke-virtual {v9, v6, v14, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_17
    move-object/from16 v2, p2

    move/from16 v4, p5

    move/from16 p2, v11

    .line 300
    :goto_d
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v11, p4

    .line 301
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v14, v1

    mul-int v15, v3, v8

    int-to-float v15, v15

    move/from16 p3, v12

    .line 303
    iget v12, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v15, v12

    invoke-virtual {v9, v6, v14, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 p2, v2

    const/16 v2, 0x5c

    goto :goto_c

    :cond_18
    move-object/from16 v2, p2

    move/from16 v4, p5

    move/from16 p2, v11

    move/from16 v11, p4

    .line 307
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v12, v6, :cond_1a

    .line 308
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    if-eqz v5, :cond_19

    int-to-float v5, v5

    .line 311
    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 312
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 313
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 314
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v4, v1

    mul-int v5, v3, v8

    int-to-float v5, v5

    .line 317
    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v6

    invoke-virtual {v9, v0, v4, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 320
    :cond_19
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v1, v1

    mul-int v3, v3, v8

    int-to-float v3, v3

    .line 323
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    invoke-virtual {v9, v0, v1, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1a
    move/from16 v8, p2

    goto/16 :goto_4

    :goto_e
    mul-int v8, v8, v13

    .line 329
    new-array v1, v8, [I

    if-eqz v0, :cond_1b

    .line 332
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 333
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :cond_1b
    if-eqz v0, :cond_1c

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 339
    :cond_1c
    monitor-exit v7

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v7

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method private static drawTextAlpha(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 596
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 597
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 603
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-string v6, "vivo X3L"

    .line 604
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move/from16 v4, p2

    .line 608
    :goto_0
    invoke-virtual {v3}, Landroid/text/TextPaint;->reset()V

    .line 609
    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 610
    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v6, p1

    int-to-float v6, v6

    .line 611
    invoke-virtual {v3, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 612
    invoke-static {v4}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v4, v1

    const v6, 0x3fa66666    # 1.3f

    mul-float v4, v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    const/16 v7, 0x5c

    .line 616
    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ne v8, v9, :cond_3

    .line 618
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 619
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v0, v5, v7, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v7

    add-float/2addr v7, v4

    float-to-int v7, v7

    .line 621
    iget v8, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    if-lez v7, :cond_2

    if-lez v8, :cond_2

    .line 625
    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_1

    return-object v10

    .line 630
    :cond_1
    invoke-virtual {v10, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 632
    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 635
    :cond_2
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float v4, v4, v6

    const/4 v5, 0x0

    .line 637
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v1

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_3
    add-int/lit8 v9, v8, 0x1

    const/4 v11, 0x2

    .line 642
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8

    float-to-double v12, v8

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v14

    double-to-int v8, v12

    .line 644
    :goto_1
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-lez v12, :cond_5

    .line 645
    invoke-virtual {v0, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v9

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v14

    double-to-int v6, v6

    if-le v6, v8, :cond_4

    move v8, v6

    :cond_4
    add-int/lit8 v9, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/16 v7, 0x5c

    goto :goto_1

    .line 650
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v9, v6, :cond_6

    .line 651
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v14

    double-to-int v6, v6

    if-le v6, v8, :cond_6

    move v8, v6

    .line 655
    :cond_6
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 656
    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v9

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    add-int/2addr v8, v1

    mul-int v11, v11, v7

    if-lez v8, :cond_8

    if-lez v11, :cond_8

    .line 662
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_7

    return-object v10

    .line 667
    :cond_7
    invoke-virtual {v10, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 669
    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    const/4 v1, 0x3

    .line 673
    invoke-static {v1}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v1, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v4, v4, v8

    sub-float/2addr v1, v4

    const/4 v4, 0x0

    const/16 v8, 0x5c

    .line 693
    :goto_2
    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-lez v9, :cond_9

    .line 694
    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 695
    invoke-static {v5, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    add-int/lit8 v9, v9, 0x1

    .line 698
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-int v11, v4, v7

    int-to-float v11, v11

    .line 700
    iget v12, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v11, v12

    invoke-virtual {v2, v5, v1, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_2

    .line 704
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v5, v8, :cond_a

    .line 705
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-static {v0, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 708
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-int v4, v4, v7

    int-to-float v4, v4

    .line 710
    iget v5, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_3
    return-object v10
.end method

.method private static declared-synchronized drawTextExt(Ljava/lang/String;II[IIIIII)Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    const-class v7, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v7

    .line 349
    :try_start_0
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 350
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 356
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    const-string v13, "vivo X3L"

    .line 357
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    move/from16 v11, p2

    .line 360
    :goto_0
    invoke-virtual {v10}, Landroid/text/TextPaint;->reset()V

    const/4 v13, 0x1

    .line 361
    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 362
    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v14, p1

    int-to-float v14, v14

    .line 363
    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v14, 0x0

    .line 364
    invoke-virtual {v10, v14, v14, v14, v12}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 366
    invoke-static {v11}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-eqz v5, :cond_1

    int-to-float v11, v5

    .line 370
    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 371
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 372
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 373
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    const/16 v11, 0x5c

    .line 376
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    const/4 v8, -0x1

    const/16 v17, 0x3

    const/high16 v18, -0x1000000

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    if-ne v15, v8, :cond_a

    .line 378
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 379
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v0, v12, v8, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double v13, v13, v19

    double-to-int v8, v13

    .line 380
    :try_start_1
    iget v13, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v14, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 381
    aput v8, v1, v12

    const/4 v14, 0x1

    .line 382
    aput v13, v1, v14

    .line 384
    array-length v14, v1

    const/4 v15, 0x4

    if-ne v14, v15, :cond_2

    int-to-double v14, v8

    .line 385
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    div-double v14, v14, v21

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v8, v14

    int-to-double v14, v8

    move-wide/from16 v11, v19

    .line 386
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-int v8, v14

    int-to-double v13, v13

    .line 387
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    div-double v13, v13, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    int-to-double v13, v13

    .line 388
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v13, v11

    :cond_2
    if-nez v8, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v12, v8

    .line 396
    :goto_2
    array-length v8, v1

    const/4 v11, 0x4

    if-ne v8, v11, :cond_5

    const/4 v8, 0x2

    .line 397
    aput v12, v1, v8

    .line 398
    aput v13, v1, v17

    :cond_5
    if-lez v12, :cond_7

    if-lez v13, :cond_7

    .line 402
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_6

    .line 406
    monitor-exit v7

    return-object v8

    .line 408
    :cond_6
    :try_start_2
    invoke-virtual {v9, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    and-int v1, v4, v18

    if-nez v1, :cond_8

    const v1, 0xffffff

    .line 412
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_4

    .line 414
    :cond_8
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_4
    if-eqz v5, :cond_9

    int-to-float v1, v5

    .line 421
    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 422
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 423
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 424
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 425
    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 427
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v3, 0x0

    sub-float v14, v3, v1

    invoke-virtual {v9, v0, v3, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 429
    :cond_9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 432
    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/4 v2, 0x0

    sub-float v14, v2, v1

    invoke-virtual {v9, v0, v2, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_d

    :cond_a
    add-int/lit8 v8, v15, 0x1

    const/4 v11, 0x0

    .line 436
    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double v11, v11, v19

    double-to-int v11, v11

    const/4 v12, 0x2

    :goto_5
    const/16 v13, 0x5c

    .line 438
    :try_start_3
    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-lez v14, :cond_c

    .line 439
    invoke-virtual {v0, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    float-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v19

    double-to-int v2, v2

    if-le v2, v11, :cond_b

    move v11, v2

    :cond_b
    add-int/lit8 v8, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p4

    move/from16 v3, p5

    goto :goto_5

    .line 444
    :cond_c
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v8, v2, :cond_d

    .line 445
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v2, v19

    double-to-int v2, v2

    if-le v2, v11, :cond_d

    move v11, v2

    .line 448
    :cond_d
    :try_start_5
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 449
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v8

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v3, v13

    mul-int v12, v12, v3

    const/4 v8, 0x0

    .line 452
    aput v11, v1, v8

    const/4 v8, 0x1

    .line 453
    aput v12, v1, v8

    .line 454
    array-length v8, v1

    const/4 v13, 0x4

    if-ne v8, v13, :cond_e

    int-to-double v13, v11

    .line 455
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    div-double v13, v13, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v8, v13

    int-to-double v13, v8

    move-object/from16 p2, v2

    move v8, v3

    move-wide/from16 v2, v19

    .line 456
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-int v11, v13

    int-to-double v12, v12

    .line 457
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-double v12, v12

    .line 458
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    move v12, v2

    goto :goto_6

    :cond_e
    move-object/from16 p2, v2

    move v8, v3

    :goto_6
    if-nez v11, :cond_10

    if-eqz v12, :cond_f

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 464
    :cond_10
    :goto_7
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    const/4 v2, 0x2

    .line 465
    aput v11, v1, v2

    .line 466
    aput v12, v1, v17

    :cond_11
    if-lez v11, :cond_13

    if-lez v12, :cond_13

    .line 470
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v2, :cond_12

    .line 474
    monitor-exit v7

    return-object v2

    .line 477
    :cond_12
    :try_start_6
    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v16, v2

    goto :goto_8

    :cond_13
    const/16 v16, 0x0

    :goto_8
    and-int v2, v4, v18

    if-nez v2, :cond_14

    const v2, 0xffffff

    .line 481
    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_9

    .line 483
    :cond_14
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 486
    :goto_9
    invoke-static/range {p8 .. p8}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v2, 0x1

    if-ne v6, v2, :cond_15

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto :goto_a

    :cond_15
    const/4 v2, 0x2

    if-ne v6, v2, :cond_16

    const/4 v3, 0x0

    .line 495
    aget v11, v1, v3

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    .line 499
    aget v1, v1, v3

    div-int/lit8 v11, v1, 0x2

    :goto_a
    const/16 v1, 0x5c

    const/4 v12, 0x0

    .line 506
    :goto_b
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_18

    .line 507
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-static {v4, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    add-int/lit8 v12, v2, 0x1

    if-eqz v5, :cond_17

    int-to-float v2, v5

    .line 512
    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 513
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 514
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 515
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v2, p5

    .line 516
    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v6, v11

    mul-int v13, v3, v8

    int-to-float v13, v13

    move-object/from16 v14, p2

    .line 518
    iget v15, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v13, v15

    invoke-virtual {v9, v4, v6, v13, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_17
    move-object/from16 v14, p2

    move/from16 v2, p5

    .line 521
    :goto_c
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v6, p4

    .line 522
    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v13, v11

    mul-int v15, v3, v8

    int-to-float v15, v15

    .line 524
    iget v1, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v15, v1

    invoke-virtual {v9, v4, v13, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 p2, v14

    const/16 v1, 0x5c

    goto :goto_b

    :cond_18
    move-object/from16 v14, p2

    move/from16 v6, p4

    move/from16 v2, p5

    .line 528
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v12, v1, :cond_1a

    .line 529
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v0, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    if-eqz v5, :cond_19

    int-to-float v1, v5

    .line 532
    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 533
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 534
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 535
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 536
    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v1, v11

    mul-int v2, v3, v8

    int-to-float v2, v2

    .line 538
    iget v4, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v4

    invoke-virtual {v9, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    :cond_19
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 542
    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v1, v11

    mul-int v3, v3, v8

    int-to-float v2, v3

    .line 544
    iget v3, v14, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    invoke-virtual {v9, v0, v1, v2, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1a
    move-object/from16 v8, v16

    .line 549
    :goto_d
    monitor-exit v7

    return-object v8

    :catchall_0
    move-exception v0

    monitor-exit v7

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method private static getTextAlignedType(I)Landroid/graphics/Paint$Align;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 113
    sget-object p0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 115
    sget-object p0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    return-object p0

    .line 118
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object p0
.end method

.method private static getTextBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v2, "!"

    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    const/high16 v3, 0x40400000    # 3.0f

    :cond_0
    cmpg-float v6, v4, v5

    if-gtz v6, :cond_1

    const/high16 v4, 0x41700000    # 15.0f

    :cond_1
    float-to-double v6, v3

    .line 78
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 80
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 81
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float v4, v5, v4

    invoke-virtual {v1, v2, v5, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v3
.end method

.method private static getTextSize(Ljava/lang/String;II)[S
    .locals 8

    .line 553
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 558
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/4 v2, 0x1

    .line 559
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 560
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 561
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 562
    invoke-static {p2}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 565
    new-array p1, v0, [S

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 567
    invoke-static {p0, p2, v3, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-short v4, v4

    .line 568
    aput-short v4, p1, v2

    move v2, v3

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static getTextSizeExt(Ljava/lang/String;II)[F
    .locals 2

    .line 574
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 578
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 579
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 580
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 581
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 582
    invoke-static {p2}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p2, 0x0

    .line 585
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    aput p0, p1, p2

    .line 586
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p0, p2

    aput p0, p1, v1

    return-object p1
.end method

.method private static getTypeface(I)Landroid/graphics/Typeface;
    .locals 1

    .line 41
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 51
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 48
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_1
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method private static declared-synchronized isSystemFontChanged()Z
    .locals 5

    const-class v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 92
    invoke-static {}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit v0

    return v2

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->getTextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    sget-object v3, Lvi/com/gdi/bgl/android/java/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lvi/com/gdi/bgl/android/java/EnvDrawText;->nativeIsBitmapSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 99
    sget-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lvi/com/gdi/bgl/android/java/EnvDrawText;->defaultFontBmp:Landroid/graphics/Bitmap;

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v0

    return v4

    .line 106
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native nativeIsBitmapSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method

.method public static declared-synchronized registFontCache(ILandroid/graphics/Typeface;)V
    .locals 2

    const-class v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 723
    :cond_0
    :try_start_0
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 724
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    .line 726
    :cond_1
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi/com/gdi/bgl/android/java/a;

    if-nez v1, :cond_2

    .line 728
    new-instance v1, Lvi/com/gdi/bgl/android/java/a;

    invoke-direct {v1}, Lvi/com/gdi/bgl/android/java/a;-><init>()V

    .line 729
    iput-object p1, v1, Lvi/com/gdi/bgl/android/java/a;->a:Landroid/graphics/Typeface;

    .line 730
    iget p1, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    .line 731
    sget-object p1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 733
    :cond_2
    iget p0, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lvi/com/gdi/bgl/android/java/a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 721
    :cond_3
    :goto_1
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized removeFontCache(I)V
    .locals 3

    const-class v0, Lvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v0

    .line 738
    :try_start_0
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvi/com/gdi/bgl/android/java/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 740
    monitor-exit v0

    return-void

    .line 742
    :cond_0
    :try_start_1
    iget v2, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    .line 743
    iget v1, v1, Lvi/com/gdi/bgl/android/java/a;->b:I

    if-nez v1, :cond_1

    .line 744
    sget-object v1, Lvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    sput-object p0, Lvi/com/gdi/bgl/android/java/EnvDrawText;->mContext:Landroid/content/Context;

    return-void
.end method
