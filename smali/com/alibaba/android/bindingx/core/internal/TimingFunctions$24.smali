.class Lcom/alibaba/android/bindingx/core/internal/TimingFunctions$24;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/core/internal/JSFunctionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/core/internal/TimingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 447
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 448
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 449
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 450
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_0

    .line 456
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    div-double/2addr v0, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v9

    if-nez v2, :cond_1

    add-double/2addr v3, v5

    .line 459
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double v11, v11, v7

    .line 462
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v2, v5, v13

    if-gez v2, :cond_2

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    div-double v13, v11, v13

    goto :goto_0

    :cond_2
    div-double v13, v11, v15

    div-double v17, v5, v5

    .line 466
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->asin(D)D

    move-result-wide v17

    mul-double v13, v13, v17

    :goto_0
    move-wide/from16 v17, v3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v19, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v9

    mul-double v9, v0, v19

    .line 468
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v5, v5, v2

    mul-double v0, v0, v7

    sub-double/2addr v0, v13

    mul-double v0, v0, v15

    div-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v5, v5, v0

    neg-double v0, v5

    add-double v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
