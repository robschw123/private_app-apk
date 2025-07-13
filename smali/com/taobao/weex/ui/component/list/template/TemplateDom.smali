.class public Lcom/taobao/weex/ui/component/list/template/TemplateDom;
.super Ljava/lang/Object;
.source "TemplateDom.java"


# static fields
.field public static final ATTACH_CELL_SLOT:Ljava/lang/String; = "_attach_slot"

.field public static final ATTRS_KEY_REF:Ljava/lang/String; = "ref"

.field public static final DETACH_CELL_SLOT:Ljava/lang/String; = "_detach_slot"

.field public static final KEY_ATTRS:Ljava/lang/String; = "attrs"

.field public static final KEY_RESET_ANIMATION:Ljava/lang/String; = "resetAnimation"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_VIRTUAL_DOM_REF:Ljava/lang/String; = "ref"

.field public static final SEPARATOR:C = '@'

.field public static final VIRTUAL_DOM_IDENTIFY:Ljava/lang/String; = "[[VirtualElement]]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listRef",
            "position",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-static {p0, p1, p2, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    .line 96
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "refs"

    .line 97
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "position"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "listRef"

    .line 99
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private static findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listRef",
            "position",
            "component",
            "refs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    instance-of v0, p2, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_1

    .line 108
    move-object v0, p2

    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v1, 0x0

    .line 109
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 110
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 111
    invoke-static {p0, p1, v2, p3}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "ref"

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 119
    :cond_2
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object p0

    .line 126
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static findChildByAttrsRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "ref"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "ref"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 213
    :cond_0
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2

    .line 214
    check-cast p0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 216
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findChildByAttrsRef(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final findComponentByViewTreeKey(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "viewKey"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 193
    :cond_0
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2

    .line 194
    check-cast p0, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 196
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 197
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findComponentByViewTreeKey(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pageId",
            "virtualRef"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "@"

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 65
    aget-object v1, p1, v1

    .line 66
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p0

    .line 67
    instance-of v1, p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-nez v1, :cond_0

    return-object v0

    .line 70
    :cond_0
    check-cast p0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 71
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 74
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    .line 76
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    if-nez p0, :cond_2

    return-object v0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getTemplate()Lcom/taobao/weex/ui/component/list/WXCell;

    move-result-object p0

    const/4 v1, 0x2

    .line 82
    aget-object p1, p1, v1

    .line 83
    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findComponentByViewTreeKey(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static genKeyVirtualDomRef(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listRef",
            "position",
            "key"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isVirtualDomRef(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0x40

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static resetAnimaiton(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 153
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 156
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 157
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 160
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 161
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 164
    :cond_3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 165
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 168
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getScaleY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 169
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 172
    :cond_5
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRotationX(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 173
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setRotationX(Landroid/view/View;F)V

    .line 176
    :cond_6
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getRotationY(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 177
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setRotationY(Landroid/view/View;F)V

    .line 180
    :cond_7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 181
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_8
    return-void
.end method

.method public static toMap(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listRef",
            "position",
            "component"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "attrs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->genKeyVirtualDomRef(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ref"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 135
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "[[VirtualElement]]"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
