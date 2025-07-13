.class Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "WXRecyclerTemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1162
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x1

    .line 1164
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1168
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 1169
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1173
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 1174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 1177
    iput v0, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetXCorrection:I

    .line 1178
    iput v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetYCorrection:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    .line 1182
    :cond_1
    iget p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetXCorrection:I

    sub-int/2addr v0, p2

    .line 1183
    iget p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->offsetYCorrection:I

    sub-int/2addr v1, p2

    .line 1185
    :goto_0
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrolled(II)V

    .line 1186
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p2

    const-string p3, "scroll"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 1189
    :cond_2
    iget-boolean p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    if-eqz p2, :cond_3

    .line 1191
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->mFirstEvent:Z

    return-void

    .line 1195
    :cond_3
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {p2, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$500(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;II)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1196
    iget-object p2, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList$7;->this$0:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-static {p2, p1, v0, v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->access$600(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_4
    return-void
.end method
