.class Lio/dcloud/common/core/ui/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "left"

    const-string v2, "right"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    :goto_0
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 14
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 15
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v7, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v7}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_5

    .line 20
    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    .line 21
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-lt v5, v0, :cond_2

    .line 24
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    .line 28
    :cond_3
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-gt v5, v0, :cond_4

    .line 31
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_0

    .line 33
    :cond_4
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    .line 36
    :cond_5
    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v8}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v8

    if-ne v7, v8, :cond_9

    .line 37
    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 38
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-gt v5, v0, :cond_6

    .line 41
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_0

    .line 43
    :cond_6
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    .line 45
    :cond_7
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-lt v5, v0, :cond_8

    .line 48
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_0

    .line 50
    :cond_8
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 55
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 58
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    .line 59
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 60
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-gez v6, :cond_c

    if-lt v5, v0, :cond_b

    .line 63
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_0

    .line 65
    :cond_b
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    .line 67
    :cond_c
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-ltz v6, :cond_e

    if-lt v5, v0, :cond_d

    .line 70
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_0

    .line 72
    :cond_d
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    :cond_e
    if-gt v5, v0, :cond_f

    .line 77
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_0

    .line 79
    :cond_f
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1

    .line 84
    :goto_2
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 85
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 86
    iget-object v7, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v7}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 87
    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_10

    .line 88
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_3

    .line 91
    :cond_10
    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-ne v1, v6, :cond_11

    .line 92
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_3

    :cond_11
    const/4 v4, 0x0

    .line 98
    :goto_3
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->e(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bounce"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 101
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Ljava/lang/String;

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_4

    :cond_12
    move v7, v0

    move v9, v4

    move v8, v5

    .line 104
    :goto_4
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v6

    .line 105
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 107
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_13
    return-void
.end method
