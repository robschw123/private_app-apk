.class public Lcom/baidu/platform/comapi/util/e;
.super Ljava/lang/Object;
.source "ColorsUtil.java"


# direct methods
.method public static a([I)[I
    .locals 6

    if-eqz p0, :cond_2

    .line 7
    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 12
    aget v2, p0, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    aget v3, p0, v1

    .line 13
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aget v4, p0, v1

    .line 14
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aget v5, p0, v1

    .line 15
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 12
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
