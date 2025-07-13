.class Lio/dcloud/h/a/d/c/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/a/d/c/b;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lio/dcloud/h/a/d/c/b;


# direct methods
.method constructor <init>(Lio/dcloud/h/a/d/c/b;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    iput-object p2, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/dcloud/h/a/e/a;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    const v1, 0xea6a

    const-string/jumbo v2, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u53ef\u89c1"

    invoke-interface {v0, v1, v2}, Lio/dcloud/h/a/c/a$c;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    iget-object v1, v0, Lio/dcloud/h/a/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iget-object v1, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    iget-object v1, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 13
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->b(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lio/dcloud/h/a/d/c/b$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/base/entry/AdData;->a(Landroid/graphics/RectF;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->c(Lio/dcloud/h/a/d/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    iget-object v1, v1, Lio/dcloud/h/a/d/c/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/h/a/c/a$c;->d()V

    .line 19
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->b(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/base/entry/AdData;->a()V

    .line 22
    invoke-static {}, Lio/dcloud/h/a/d/b/h;->a()Lio/dcloud/h/a/d/b/h;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v2}, Lio/dcloud/h/a/d/c/b;->b(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/sdk/base/entry/AdData;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/h/a/d/b/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$b;->b:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    const v1, 0xea64

    const-string/jumbo v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lio/dcloud/h/a/c/a$c;->a(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
