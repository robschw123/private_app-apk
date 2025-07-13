.class public Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"


# instance fields
.field private mCurrentStickyRef:Ljava/lang/String;

.field private mHeaderComps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/WXCell;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    return-void
.end method

.method private changeFrontStickyVisible()V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 192
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    if-eqz v5, :cond_1

    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 195
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public clearStickyHeaders()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 181
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compToRemove"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 130
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    new-instance v2, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;-><init>(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;Landroid/view/View;Lcom/taobao/weex/ui/component/list/WXCell;)V

    invoke-static {v2}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 142
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string v1, "unsticky"

    invoke-virtual {p1, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 143
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/list/WXCell;->fireEvent(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 123
    :cond_5
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 57
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v0

    if-le v1, v0, :cond_3

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 66
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, "Current Sticky ref is null."

    .line 67
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 72
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_5

    const-string p1, "Sticky header\'s real view is null."

    .line 74
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_6

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    goto :goto_1

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 86
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->removeSticky()V

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 90
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 92
    :cond_7
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 96
    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v3

    if-lez v3, :cond_8

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v5, :cond_8

    .line 101
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getStickyOffset()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 105
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    :goto_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    .line 109
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/WXCell;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "sticky"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/component/list/WXCell;->fireEvent(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public updateStickyView(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentStickyPos"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderComps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 154
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getScrollPositon()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 156
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v3, p1, :cond_0

    .line 158
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mCurrentStickyRef:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->mHeaderViews:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/WXCell;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 162
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->changeFrontStickyVisible()V

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/WXCell;

    .line 167
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V

    goto :goto_1

    :cond_3
    return-void
.end method
