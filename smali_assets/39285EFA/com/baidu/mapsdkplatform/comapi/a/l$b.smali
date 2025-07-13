.class public Lcom/baidu/mapsdkplatform/comapi/a/l$b;
.super Ljava/lang/Object;
.source "BDTransformation.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/a/l;


# direct methods
.method public constructor <init>(Lcom/baidu/mapsdkplatform/comapi/a/l;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l$b;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 167
    check-cast p2, Landroid/graphics/Point;

    .line 168
    check-cast p3, Landroid/graphics/Point;

    .line 169
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 170
    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 171
    new-instance p1, Landroid/graphics/Point;

    float-to-int p2, v0

    float-to-int p3, v1

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method
