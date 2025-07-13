.class public Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;
.super Landroid/text/method/LinkMovementMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/richtext/RichTextParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkMovementMethodExt"
.end annotation


# instance fields
.field downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

.field downTime:J

.field downX:F

.field downY:F

.field mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

.field mObserver:Lio/dcloud/common/DHInterface/ICallBack;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/nativeObj/richtext/IAssets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mObserver:Lio/dcloud/common/DHInterface/ICallBack;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downTime:J

    .line 9
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 10
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mObserver:Lio/dcloud/common/DHInterface/ICallBack;

    .line 11
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    int-to-float v8, v4

    .line 11
    invoke-virtual {v6, v7, v8}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 12
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    .line 13
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    int-to-float v10, v10

    .line 14
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    .line 15
    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    int-to-float v6, v6

    .line 16
    new-instance v7, Landroid/graphics/Rect;

    float-to-int v9, v9

    float-to-int v10, v10

    float-to-int v11, v11

    float-to-int v6, v6

    invoke-direct {v7, v9, v10, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v6, "false"

    .line 17
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v7, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    const-string v5, "true"

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_e

    .line 20
    const-class v4, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    invoke-interface {v2, v8, v8, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    if-eqz v4, :cond_d

    .line 21
    array-length v10, v4

    if-eqz v10, :cond_d

    if-ne v3, v9, :cond_8

    .line 23
    iget-object v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    if-eqz v10, :cond_7

    array-length v10, v10

    array-length v11, v4

    if-lt v10, v11, :cond_7

    iget-object v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v10}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->isClick()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x0

    .line 24
    :goto_0
    array-length v11, v4

    if-ge v10, v11, :cond_7

    .line 25
    aget-object v11, v4, v10

    .line 26
    iget-object v12, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    aget-object v12, v12, v10

    if-ne v11, v12, :cond_6

    .line 27
    invoke-interface {v2, v11}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    .line 28
    invoke-interface {v2, v11}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 29
    invoke-interface {v2, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    const/16 v15, 0x12

    if-eqz v13, :cond_0

    .line 30
    invoke-interface/range {p2 .. p2}, Landroid/text/Spannable;->length()I

    move-result v6

    if-eq v14, v6, :cond_0

    array-length v6, v4

    if-ne v6, v9, :cond_1

    :cond_0
    const/16 v12, 0x12

    :cond_1
    const/16 v6, 0x11

    if-ne v12, v6, :cond_2

    if-lt v8, v13, :cond_2

    if-lt v8, v14, :cond_5

    :cond_2
    if-ne v12, v15, :cond_3

    if-lt v8, v13, :cond_3

    if-le v8, v14, :cond_5

    :cond_3
    const/16 v6, 0x21

    if-ne v12, v6, :cond_4

    if-le v8, v13, :cond_4

    if-lt v8, v14, :cond_5

    :cond_4
    const/16 v6, 0x22

    if-ne v12, v6, :cond_6

    if-le v8, v13, :cond_6

    if-gt v8, v14, :cond_6

    .line 39
    :cond_5
    iget-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v11, v1, v6}, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;->onClick(Landroid/view/View;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 40
    iget-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mObserver:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v6, :cond_7

    invoke-interface {v6, v7, v11}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v6, 0x0

    .line 46
    iput-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    .line 48
    iput-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downX:F

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downY:F

    goto :goto_2

    :cond_9
    const/4 v6, 0x2

    if-ne v3, v6, :cond_b

    .line 52
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v8, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downX:F

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v8, 0x41a00000    # 20.0f

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downY:F

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_b

    :cond_a
    const/4 v6, 0x0

    .line 53
    iput-object v6, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downLinks:[Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;

    :cond_b
    :goto_2
    const/4 v6, 0x0

    .line 56
    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_d

    .line 57
    aget-object v8, v4, v6

    .line 58
    invoke-interface {v8}, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;->hasClickEvent()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 59
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object v6, v4

    const/4 v4, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    move-object v6, v4

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    :goto_4
    const/4 v4, 0x0

    .line 67
    :goto_5
    iget-object v8, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v8}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->isClick()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 68
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_13

    if-eq v3, v9, :cond_f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    goto/16 :goto_8

    .line 76
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downTime:J

    sub-long/2addr v3, v10

    const-wide/16 v10, 0x320

    cmp-long v5, v3, v10

    if-gez v5, :cond_15

    const-string v3, ""

    if-eqz v6, :cond_12

    .line 81
    array-length v4, v6

    if-lez v4, :cond_12

    .line 82
    aget-object v4, v6, v7

    if-eqz v4, :cond_12

    .line 84
    invoke-interface {v4}, Lio/dcloud/feature/nativeObj/richtext/span/ClickSpanAble;->getHref()Ljava/lang/String;

    move-result-object v5

    .line 85
    instance-of v6, v4, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    if-eqz v6, :cond_10

    .line 86
    check-cast v4, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;

    invoke-virtual {v4}, Lio/dcloud/feature/nativeObj/richtext/span/ImgSpan;->getSrc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "img"

    :goto_6
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    goto :goto_7

    .line 88
    :cond_10
    instance-of v4, v4, Lio/dcloud/feature/nativeObj/richtext/span/AHrefSpan;

    if-eqz v4, :cond_11

    const-string v4, "a"

    goto :goto_6

    :cond_11
    move-object v4, v3

    goto :goto_7

    :cond_12
    move-object v4, v3

    move-object v5, v4

    .line 93
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"tagName\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"href\":\""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"src\":\""

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    iget-object v10, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v4}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->getOnClickCallBackId()Ljava/lang/String;

    move-result-object v11

    sget v13, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v12, v3

    invoke-static/range {v10 .. v15}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 95
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 96
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v10

    iget-object v4, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->mAssets:Lio/dcloud/feature/nativeObj/richtext/IAssets;

    invoke-interface {v4}, Lio/dcloud/feature/nativeObj/richtext/IAssets;->getOnClickCallBackId()Ljava/lang/String;

    move-result-object v11

    sget v13, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v12, v3

    invoke-static/range {v10 .. v15}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_8

    .line 97
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lio/dcloud/feature/nativeObj/richtext/RichTextParser$LinkMovementMethodExt;->downTime:J

    goto :goto_8

    :cond_14
    move v9, v4

    :cond_15
    :goto_8
    if-eqz v9, :cond_16

    goto :goto_9

    .line 127
    :cond_16
    invoke-super/range {p0 .. p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_9
    return v9
.end method
