.class Lcom/taobao/weex/ui/component/DCWXScroller$1;
.super Ljava/lang/Object;
.source "DCWXScroller.java"

# interfaces
.implements Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXScroller;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation

    return-void
.end method

.method public onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 208
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$000(Lcom/taobao/weex/ui/component/DCWXScroller;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$100(Lcom/taobao/weex/ui/component/DCWXScroller;Landroid/graphics/Rect;IIII)V

    :cond_1
    return-void
.end method

.method public onScrollStopped(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 238
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/DCWXScroller;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$100(Lcom/taobao/weex/ui/component/DCWXScroller;Landroid/graphics/Rect;IIII)V

    return-void
.end method

.method public onScrollToBottom(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation

    .line 219
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p3, "direction"

    const-string v0, "bottom"

    .line 220
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "detail"

    .line 222
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    const-string p2, "scrolltolower"

    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onScrollToTop(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation

    .line 228
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p3, "direction"

    const-string v0, "top"

    .line 229
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(I)V

    const-string p2, "detail"

    .line 231
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$1;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    const-string p2, "scrolltoupper"

    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
