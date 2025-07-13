.class public abstract Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
.super Ljava/lang/Object;
.source "AbsComponentData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

.field private mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field public mComponentType:Ljava/lang/String;

.field protected mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

.field private mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field private mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

.field public mParentRef:Ljava/lang/String;

.field public mRef:Ljava/lang/String;

.field protected mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

.field protected renderObjectPr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "componentType",
            "parentRef"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    .line 53
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mRef:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mComponentType:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mParentRef:Ljava/lang/String;

    return-void
.end method

.method private addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spacingType",
            "border"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 200
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method

.method private addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spacingType",
            "margin"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 186
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method

.method private addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "spacingType",
            "padding"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 193
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->set(Ljava/lang/Enum;F)V

    return-void
.end method


# virtual methods
.method public final addAttr(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/dom/WXAttr;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsAttr;->putAll(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final addEvent(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "events"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 85
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 91
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/uniapp/dom/AbsEvent;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final addShorthand(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shorthand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 128
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "marginLeft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "marginRight"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "borderWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "paddingRight"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "paddingBottom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "paddingTop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "borderLeftWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "marginBottom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v3, "padding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_9
    const-string v3, "marginTop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_a
    const-string v3, "margin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_b
    const-string v3, "borderBottomWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_c
    const-string v3, "borderTopWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_d
    const-string v3, "paddingLeft"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_1

    :cond_d
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_e
    const-string v3, "borderRightWidth"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_1

    :cond_e
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 136
    :pswitch_0
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 142
    :pswitch_1
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 148
    :pswitch_2
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 172
    :pswitch_3
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 175
    :pswitch_4
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 169
    :pswitch_5
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 160
    :pswitch_6
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 145
    :pswitch_7
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 163
    :pswitch_8
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 139
    :pswitch_9
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 133
    :pswitch_a
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addMargin(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 157
    :pswitch_b
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 151
    :pswitch_c
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 166
    :pswitch_d
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addPadding(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    .line 154
    :pswitch_e
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/feature/uniapp/utils/UniUtils;->fastGetFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addBorder(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto/16 :goto_0

    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_e
        -0x597a2048 -> :sswitch_d
        -0x56940a43 -> :sswitch_c
        -0x4cec9971 -> :sswitch_b
        -0x40737a52 -> :sswitch_a
        -0x3e464339 -> :sswitch_9
        -0x300fc3ef -> :sswitch_8
        -0x113c6e87 -> :sswitch_7
        -0xd59d8cd -> :sswitch_6
        0x55f4784 -> :sswitch_5
        0xc0fb19c -> :sswitch_4
        0x2a8c788b -> :sswitch_3
        0x2c2c84fa -> :sswitch_2
        0x3a1ea90e -> :sswitch_1
        0x757a12d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addShorthand([FLio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shorthand",
            "type"
        }
    .end annotation

    const/4 v0, 0x4

    if-nez p1, :cond_0

    new-array p1, v0, [F

    .line 96
    fill-array-data p1, :array_0

    .line 98
    :cond_0
    array-length v1, p1

    if-ne v1, v0, :cond_7

    .line 99
    sget-object v0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData$1;->$SwitchMap$io$dcloud$feature$uniapp$dom$AbsCSSShorthand$TYPE:[I

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand$TYPE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_2

    .line 116
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_4

    .line 109
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    goto :goto_0

    .line 101
    :cond_5
    iget-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez p2, :cond_6

    .line 102
    new-instance p2, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>([F)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    goto :goto_0

    .line 104
    :cond_6
    invoke-virtual {p2, p1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->replace([F)V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public addStyle(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->addStyle(Ljava/util/Map;Z)V

    return-void
.end method

.method public final addStyle(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "styles",
            "byPesudo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-nez v0, :cond_1

    .line 67
    new-instance p2, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {p2, p1}, Lcom/taobao/weex/dom/WXStyle;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/uniapp/dom/AbsStyle;->putAll(Ljava/util/Map;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/dcloud/feature/uniapp/ui/action/AbsComponentData<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->clone()Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;

    move-result-object v0

    return-object v0
.end method

.method public getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;
    .locals 1

    .line 211
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/taobao/weex/dom/WXAttr;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXAttr;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    .line 214
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mAttributes:Lio/dcloud/feature/uniapp/dom/AbsAttr;

    return-object v0
.end method

.method public getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .locals 1

    .line 248
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 251
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getEvents()Lio/dcloud/feature/uniapp/dom/AbsEvent;
    .locals 1

    .line 218
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    .line 221
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mEvents:Lio/dcloud/feature/uniapp/dom/AbsEvent;

    return-object v0
.end method

.method public getMargin()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .locals 1

    .line 228
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 231
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;
    .locals 1

    .line 238
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    .line 241
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-object v0
.end method

.method public getRenderObjectPr()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    return-wide v0
.end method

.method public getStyles()Lio/dcloud/feature/uniapp/dom/AbsStyle;
    .locals 1

    .line 204
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/taobao/weex/dom/WXStyle;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXStyle;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    .line 207
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mStyles:Lio/dcloud/feature/uniapp/dom/AbsStyle;

    return-object v0
.end method

.method public isRenderPtrEmpty()Z
    .locals 5

    .line 275
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBorders"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mBorders:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public final setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mMargins"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mMargins:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public final setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPaddings"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->mPaddings:Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    return-void
.end method

.method public declared-synchronized setRenderObjectPr(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderObjectPr"
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget-wide v0, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 283
    iput-wide p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderObjectPr has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " old renderObjectPtr "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;->renderObjectPr:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
