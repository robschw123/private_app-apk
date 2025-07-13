.class public Lio/dcloud/sdk/activity/a/a;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/activity/a/a$b;,
        Lio/dcloud/sdk/activity/a/a$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field public b:Lio/dcloud/sdk/activity/a/a$b;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/activity/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:F

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lio/dcloud/sdk/activity/a/a;->g:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 4
    iput v0, p0, Lio/dcloud/sdk/activity/a/a;->i:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->k:Z

    .line 7
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->l:Z

    const/high16 v1, 0x41800000    # 16.0f

    .line 9
    iput v1, p0, Lio/dcloud/sdk/activity/a/a;->m:F

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lio/dcloud/sdk/activity/a/a;->n:I

    .line 12
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->o:Z

    .line 14
    iput-boolean v1, p0, Lio/dcloud/sdk/activity/a/a;->p:Z

    .line 18
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/activity/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-string p2, ""

    .line 20
    iput-object p2, p0, Lio/dcloud/sdk/activity/a/a;->g:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    const/high16 p2, -0x1000000

    .line 22
    iput p2, p0, Lio/dcloud/sdk/activity/a/a;->i:I

    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, Lio/dcloud/sdk/activity/a/a;->k:Z

    .line 25
    iput-boolean p2, p0, Lio/dcloud/sdk/activity/a/a;->l:Z

    const/high16 v0, 0x41800000    # 16.0f

    .line 27
    iput v0, p0, Lio/dcloud/sdk/activity/a/a;->m:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lio/dcloud/sdk/activity/a/a;->n:I

    .line 30
    iput-boolean p2, p0, Lio/dcloud/sdk/activity/a/a;->o:Z

    .line 32
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->p:Z

    .line 41
    iput-boolean p2, p0, Lio/dcloud/sdk/activity/a/a;->p:Z

    .line 42
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/activity/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 12
    iget-object p1, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lio/dcloud/base/R$drawable;->dcloud_ad_slt_as_ios7_other_bt_middle:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private a()Landroid/view/animation/Animation;
    .locals 3

    .line 10
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/sdk/activity/a/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/sdk/activity/a/a;->l:Z

    return p1
.end method

.method private b(I)I
    .locals 2

    int-to-float p1, p1

    .line 4
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private b()Landroid/view/animation/Animation;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-object v0
.end method

.method private c()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/dcloud/sdk/activity/a/a;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 3
    iget-object v2, v0, Lio/dcloud/sdk/activity/a/a;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 4
    iget-object v4, v0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 5
    iget-object v5, v0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    const/4 v4, 0x1

    :cond_0
    const/16 v5, 0xc

    const/16 v6, 0x32

    const/16 v7, 0x64

    const/16 v8, 0x11

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eqz v4, :cond_1

    .line 11
    new-instance v11, Landroid/widget/TextView;

    iget-object v12, v0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 14
    iget v12, v0, Lio/dcloud/sdk/activity/a/a;->m:F

    invoke-virtual {v11, v9, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 15
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setId(I)V

    .line 17
    iget-object v12, v0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/dcloud/base/R$drawable;->dcloud_ad_slt_as_ios7_other_bt_middle:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object v12, v0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget v12, v0, Lio/dcloud/sdk/activity/a/a;->i:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6}, Lio/dcloud/sdk/activity/a/a;->b(I)I

    move-result v13

    invoke-direct {v12, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 24
    iget v13, v0, Lio/dcloud/sdk/activity/a/a;->n:I

    invoke-direct {v0, v13}, Lio/dcloud/sdk/activity/a/a;->b(I)I

    move-result v13

    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 25
    iget-object v13, v0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v13, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v12, v0, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    if-eqz v12, :cond_1

    .line 27
    invoke-interface {v12, v11}, Lio/dcloud/sdk/activity/a/a$b;->initCancelText(Landroid/widget/TextView;)V

    .line 31
    :cond_1
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, v0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v12, Landroid/widget/ScrollView;

    iget-object v13, v0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x12c

    .line 35
    invoke-virtual {v12, v13}, Landroid/widget/ScrollView;->setId(I)V

    .line 36
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v14, v10, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v11, v6, v1, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    invoke-virtual {v12, v11, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v4, :cond_3

    .line 41
    invoke-virtual {v1, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    :goto_1
    iget-object v4, v0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_4

    .line 50
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, v0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0xc8

    .line 52
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setId(I)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-direct/range {p0 .. p0}, Lio/dcloud/sdk/activity/a/a;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v4, v0, Lio/dcloud/sdk/activity/a/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "#8C8C8C"

    .line 56
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget v4, v0, Lio/dcloud/sdk/activity/a/a;->m:F

    invoke-virtual {v1, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x6

    .line 60
    invoke-virtual {v4, v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    iget-object v5, v0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :cond_4
    iget-object v1, v0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    .line 68
    :goto_2
    iget-object v4, v0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 69
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    add-int/lit8 v5, v1, 0x64

    add-int/2addr v5, v3

    .line 71
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 72
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v5, v0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5, v1, v2}, Lio/dcloud/sdk/activity/a/a;->a(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v5, v0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/sdk/activity/a/a$c;

    iget-object v5, v5, Lio/dcloud/sdk/activity/a/a$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "#000000"

    .line 80
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget v5, v0, Lio/dcloud/sdk/activity/a/a;->m:F

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez v1, :cond_5

    .line 84
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x32

    invoke-direct {v0, v7}, Lio/dcloud/sdk/activity/a/a;->b(I)I

    move-result v12

    invoke-direct {v5, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 86
    invoke-virtual {v11, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    const/16 v7, 0x32

    .line 88
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7}, Lio/dcloud/sdk/activity/a/a;->b(I)I

    move-result v12

    invoke-direct {v5, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {v11, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :goto_3
    iget-object v5, v0, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    if-eqz v5, :cond_6

    .line 93
    iget-object v12, v0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/dcloud/sdk/activity/a/a$c;

    iget-object v12, v12, Lio/dcloud/sdk/activity/a/a$c;->a:Ljava/lang/String;

    invoke-interface {v5, v1, v4, v12}, Lio/dcloud/sdk/activity/a/a$b;->initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_7
    iget v1, v0, Lio/dcloud/sdk/activity/a/a;->n:I

    invoke-direct {v0, v1}, Lio/dcloud/sdk/activity/a/a;->b(I)I

    move-result v1

    .line 99
    iget-object v2, v0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-boolean v2, v0, Lio/dcloud/sdk/activity/a/a;->p:Z

    if-eqz v2, :cond_8

    .line 101
    iget-object v2, v0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    .line 103
    :cond_8
    iget-object v2, v0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v1, v6, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_4
    return-void
.end method

.method private c(I)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Lio/dcloud/sdk/activity/a/a$b;->onDismiss(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lio/dcloud/sdk/activity/a/a;->e()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    invoke-direct {p0}, Lio/dcloud/sdk/activity/a/a;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method private d()Landroid/view/animation/Animation;
    .locals 10

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method

.method private e()Landroid/view/animation/Animation;
    .locals 10

    .line 1
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    return-object v9
.end method

.method private f()Landroid/view/View;
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x50

    .line 3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    .line 6
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-boolean v1, p0, Lio/dcloud/sdk/activity/a/a;->p:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    const/16 v4, 0x88

    const/4 v5, 0x0

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    :cond_0
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 11
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    .line 14
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16
    iget-object v2, p0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 18
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    sget v0, Lio/dcloud/base/R$drawable;->dcloud_ad_slt_as_ios7_other_bt_middle:I

    .line 3
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lio/dcloud/sdk/activity/a/a$b;)Lio/dcloud/sdk/activity/a/a;
    .locals 0

    .line 41
    iput-object p1, p0, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/dcloud/sdk/activity/a/a;
    .locals 0

    .line 20
    iput-object p1, p0, Lio/dcloud/sdk/activity/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lio/dcloud/sdk/activity/a/a;
    .locals 6

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    .line 23
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 28
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "title"

    .line 30
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "style"

    .line 31
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    .line 32
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v5, Lio/dcloud/sdk/activity/a/a$c;

    invoke-direct {v5, p0, v3, v4, v2}, Lio/dcloud/sdk/activity/a/a$c;-><init>(Lio/dcloud/sdk/activity/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 40
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public a(Z)Lio/dcloud/sdk/activity/a/a;
    .locals 0

    .line 21
    iput-boolean p1, p0, Lio/dcloud/sdk/activity/a/a;->j:Z

    return-object p0
.end method

.method public a(I)V
    .locals 1

    .line 13
    iget-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lio/dcloud/sdk/activity/a/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lio/dcloud/sdk/activity/a/a;->k:Z

    .line 18
    iget-object p1, p0, Lio/dcloud/sdk/activity/a/a;->f:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lio/dcloud/sdk/activity/a/a;->n:I

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/activity/a/a;->h()V

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 6
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance p1, Lio/dcloud/sdk/activity/a/a$a;

    invoke-direct {p1, p0}, Lio/dcloud/sdk/activity/a/a$a;-><init>(Lio/dcloud/sdk/activity/a/a;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7
    :cond_0
    invoke-direct {p0}, Lio/dcloud/sdk/activity/a/a;->f()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/sdk/activity/a/a;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->e:Landroid/view/View;

    invoke-direct {p0}, Lio/dcloud/sdk/activity/a/a;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->d:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lio/dcloud/sdk/activity/a/a;->d()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/dcloud/sdk/activity/a/a;->c()V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/activity/a/a;->show()V

    .line 5
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/sdk/activity/a/a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->k:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/dcloud/sdk/activity/a/a;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    add-int/lit8 p1, p1, -0x64

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/activity/a/a;->a(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0, p1}, Lio/dcloud/sdk/activity/a/a$b;->onItemClick(I)V

    .line 8
    :cond_3
    iput-boolean v2, p0, Lio/dcloud/sdk/activity/a/a;->l:Z

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    .line 10
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/activity/a/a;->a(I)V

    .line 11
    iget-object v0, p0, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0, p1}, Lio/dcloud/sdk/activity/a/a$b;->onItemClick(I)V

    .line 13
    :cond_5
    iput-boolean v2, p0, Lio/dcloud/sdk/activity/a/a;->l:Z

    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 3
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lio/dcloud/sdk/activity/a/a;->n:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
