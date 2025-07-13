.class Lcom/taobao/weex/ui/view/WXCircleViewPager$2;
.super Ljava/lang/Object;
.source "WXCircleViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXCircleViewPager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$202(Lcom/taobao/weex/ui/view/WXCircleViewPager;I)I

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCirclePageAdapter()Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$301(Lcom/taobao/weex/ui/view/WXCircleViewPager;)I

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$400(Lcom/taobao/weex/ui/view/WXCircleViewPager;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {p1, v2, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V

    .line 93
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 94
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$2;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {p1, v1, v4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$500(Lcom/taobao/weex/ui/view/WXCircleViewPager;IZ)V

    .line 98
    :try_start_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    return-void
.end method
