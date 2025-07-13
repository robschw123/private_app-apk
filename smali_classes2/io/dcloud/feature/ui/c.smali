.class public Lio/dcloud/feature/ui/c;
.super Lio/dcloud/feature/ui/b;

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# static fields
.field private static final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field C:Ljava/lang/Object;

.field D:Z

.field E:Z

.field F:I

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field protected N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field O:Ljava/lang/String;

.field P:Ljava/lang/String;

.field Q:Lio/dcloud/common/DHInterface/IWebview;

.field R:Ljava/lang/String;

.field S:Lio/dcloud/common/DHInterface/IWebview;

.field T:Ljava/lang/String;

.field U:Lio/dcloud/common/DHInterface/IWebview;

.field V:Ljava/lang/String;

.field private W:Z

.field X:Lio/dcloud/feature/ui/c;

.field private Y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/ui/c;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field private a0:Ljava/lang/String;

.field private b0:I

.field private c0:Z

.field d0:Ljava/lang/Runnable;

.field v:J

.field w:Lorg/json/JSONArray;

.field x:Lio/dcloud/common/DHInterface/IWebview;

.field y:Lorg/json/JSONObject;

.field z:Lio/dcloud/common/DHInterface/IFrameView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/feature/ui/c;->u:Ljava/util/HashMap;

    const-string v1, "close"

    const-string v2, "onclose"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loading"

    const-string v2, "onloading"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failed"

    const-string v2, "onerror"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loaded"

    const-string v2, "onloaded"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "NWindow"

    .line 2
    invoke-direct {p0, v0}, Lio/dcloud/feature/ui/b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/ui/c;->v:J

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->w:Lorg/json/JSONArray;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->x:Lio/dcloud/common/DHInterface/IWebview;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->y:Lorg/json/JSONObject;

    .line 11
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lio/dcloud/feature/ui/c;->B:I

    .line 18
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->C:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->D:Z

    .line 22
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->E:Z

    .line 23
    iput v1, p0, Lio/dcloud/feature/ui/c;->F:I

    .line 26
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->G:Z

    .line 28
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->H:Z

    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, Lio/dcloud/feature/ui/c;->I:Z

    .line 32
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->J:Z

    .line 34
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->K:Z

    .line 36
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->L:Z

    .line 38
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->M:Z

    .line 40
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    .line 42
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->O:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->P:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->Q:Lio/dcloud/common/DHInterface/IWebview;

    .line 49
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->R:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/common/DHInterface/IWebview;

    .line 54
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->T:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->U:Lio/dcloud/common/DHInterface/IWebview;

    .line 58
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->V:Ljava/lang/String;

    .line 60
    iput-boolean v2, p0, Lio/dcloud/feature/ui/c;->W:Z

    .line 62
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->X:Lio/dcloud/feature/ui/c;

    .line 64
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->Y:Ljava/util/ArrayList;

    .line 66
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->Z:Z

    const-string v2, "auto"

    .line 67
    iput-object v2, p0, Lio/dcloud/feature/ui/c;->a0:Ljava/lang/String;

    const/16 v2, 0x96

    .line 68
    iput v2, p0, Lio/dcloud/feature/ui/c;->b0:I

    .line 70
    iput-boolean v1, p0, Lio/dcloud/feature/ui/c;->c0:Z

    .line 2172
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->d0:Ljava/lang/Runnable;

    .line 2173
    iput-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    .line 2174
    iput-object p3, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    .line 2175
    iput-object p5, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    .line 2176
    iput-object p6, p0, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    .line 2177
    invoke-virtual {p0, p2, p4}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/ui/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/ui/c;->a0:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6

    .line 2207
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 2209
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2211
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/ui/b;

    .line 2212
    instance-of v4, v3, Lio/dcloud/feature/ui/c;

    if-eqz v4, :cond_0

    .line 2213
    check-cast v3, Lio/dcloud/feature/ui/c;

    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2215
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, ","

    .line 2218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 2222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lio/dcloud/common/DHInterface/IContainerView;Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;IIII)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    .line 200
    iput p3, p2, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 201
    iput p4, p2, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 202
    iput p5, p2, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 203
    iput p6, p2, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 204
    invoke-virtual {p2}, Lio/dcloud/common/adapter/util/ViewRect;->commitUpdate2JSONObject()V

    .line 205
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 206
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {v0, v1, v1, p5, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    :goto_0
    const/4 p2, 0x0

    .line 216
    invoke-static {v0, p2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 217
    invoke-static {v0, p2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 218
    invoke-static {p3, p4, p5, p6}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 219
    invoke-interface {p0, p1, p2}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "appendNWindow Y="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "View_Visible_Path"

    invoke-static {p1, p0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "titletext"

    const-string v5, "titleText"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v2, :cond_1

    .line 2224
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 2225
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 2226
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v5}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v5

    .line 2227
    iget-object v10, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v10, v10, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v11, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v8

    aput-object v3, v6, v9

    aput-object v5, v6, v7

    const/16 v5, 0x48

    invoke-interface {v10, v11, v5, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2230
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 2231
    iget-object v3, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v8

    .line 2232
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    aput-object v2, v4, v9

    const/16 v2, 0x49

    .line 2233
    invoke-interface {v3, v11, v2, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2236
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2237
    iget-object v1, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->titleNViewRefresh()V

    :cond_0
    return-void

    :cond_1
    if-nez v3, :cond_2

    return-void

    .line 2246
    :cond_2
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->paddingIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v10

    .line 2248
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->backgroundIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v11

    .line 2250
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->backgroundImageIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v12

    .line 2252
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleAlignIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v13

    .line 2254
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->redDotChange(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v14

    .line 2256
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewStyleNoTitle(Lorg/json/JSONObject;)Z

    .line 2258
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v15

    .line 2260
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleColorIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v16

    .line 2262
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleSizeIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v17

    .line 2264
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->titleOverflowIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v18

    .line 2267
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->splitLineIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v19

    .line 2269
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->backButtonIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v20

    .line 2271
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->progressIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v21

    const-string v6, "homeButton"

    .line 2273
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    .line 2275
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->isButtonsIsChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v22

    .line 2277
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->isSearchInputChange(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v23

    .line 2279
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->subTitleIconChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v24

    .line 2280
    invoke-static/range {p3 .. p4}, Lio/dcloud/common/util/TitleNViewUtil;->isShadowChanged(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v25

    .line 2282
    iget-object v7, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v7}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v7

    .line 2285
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 2287
    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2288
    invoke-static {v9, v8}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move/from16 p1, v12

    .line 2289
    iget-object v12, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    iget v12, v12, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    if-eqz v9, :cond_4

    move/from16 v27, v13

    const-string v13, "coverage"

    .line 2290
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    move/from16 v29, v14

    .line 2291
    iget-object v14, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v14, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v14

    .line 2292
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object v30

    move/from16 v31, v6

    invoke-static/range {v30 .. v30}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v2

    invoke-static {v13, v6, v12, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    iput v2, v14, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    goto :goto_1

    :cond_3
    move/from16 v31, v6

    goto :goto_0

    :cond_4
    move/from16 v31, v6

    move/from16 v27, v13

    :goto_0
    move/from16 v29, v14

    :goto_1
    if-eqz v9, :cond_29

    .line 2298
    :try_start_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2299
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2300
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 2301
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2303
    :cond_5
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2304
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2305
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 2306
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_6
    const/4 v4, 0x0

    :goto_2
    const-string v5, "titleColor"

    .line 2312
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v12, "titlecolor"

    if-eqz v6, :cond_7

    .line 2313
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 2314
    :cond_7
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2315
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 2317
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2318
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2319
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2320
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_9
    const-string v5, "type"

    .line 2324
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "transparent"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v14, 0x0

    if-eqz v12, :cond_a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 2325
    invoke-static {v6, v14}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    :cond_a
    const-string v12, "titleSize"

    .line 2329
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    const-string v2, "titlesize"

    if-eqz v30, :cond_b

    .line 2330
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_4

    .line 2331
    :cond_b
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 2332
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto :goto_4

    :cond_c
    const/16 v30, 0x0

    .line 2334
    :goto_4
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_d

    .line 2335
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2336
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2337
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    :cond_d
    move-object/from16 v2, v30

    const-string v12, "titleOverflow"

    .line 2340
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "backgroundColor"

    .line 2343
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v33

    move/from16 v34, v10

    const-string v10, "backgroundcolor"

    if-eqz v33, :cond_e

    .line 2344
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_5

    .line 2345
    :cond_e
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 2346
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    goto :goto_5

    :cond_f
    const/16 v33, 0x0

    .line 2348
    :goto_5
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 2349
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2350
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 2351
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    :cond_10
    move-object/from16 v10, v33

    const-string v14, "backgroundImage"

    .line 2356
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_11

    .line 2357
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v32, v14

    goto :goto_6

    :cond_11
    const/16 v32, 0x0

    :goto_6
    const-string v14, "\',\'"

    const-string v3, "[\'"

    const-string v33, "nativeobj"

    move-object/from16 v35, v12

    if-eqz v11, :cond_15

    .line 2361
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 2364
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    .line 2365
    invoke-static {v10, v11}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    .line 2366
    :cond_12
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "float"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    move-object v11, v10

    goto :goto_7

    :cond_13
    const/high16 v11, 0x3f800000    # 1.0f

    .line 2368
    invoke-static {v10, v11}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v11

    .line 2371
    :goto_7
    iget-object v13, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v13, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v13

    iget-boolean v13, v13, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v13, :cond_14

    iget-object v13, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v13}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v13

    invoke-interface {v13}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v13

    iget-boolean v13, v13, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz v13, :cond_14

    .line 2372
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ",\'statusbar\':{\'background\':\'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\',\'backgroundnoalpha\':\'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'}"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_14
    const-string v10, ""

    .line 2374
    :goto_8
    iget-object v12, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v12, v12, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v13, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v36, v5

    move-object/from16 v37, v9

    const/4 v5, 0x4

    new-array v9, v5, [Ljava/lang/Object;

    .line 2375
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/16 v28, 0x0

    aput-object v5, v9, v28

    const/4 v5, 0x1

    aput-object v33, v9, v5

    const-string v5, "setStyle"

    const/16 v26, 0x2

    aput-object v5, v9, v26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v38, v2

    const-string v2, "\',{\'backgroundColor\':\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v9, v5

    const/4 v2, 0x1

    .line 2376
    invoke-interface {v12, v13, v2, v9}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_15
    move-object/from16 v38, v2

    move-object/from16 v36, v5

    move-object/from16 v37, v9

    :goto_9
    const-string v2, "tags"

    .line 2380
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2382
    iget-object v5, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v5, v5, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v8, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Object;

    .line 2383
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v33, v10, v9

    const-string v9, "view_draw"

    const/4 v11, 0x2

    aput-object v9, v10, v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\',"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v10, v9

    const/4 v2, 0x1

    .line 2384
    invoke-interface {v5, v8, v2, v10}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2388
    :cond_16
    iget-object v2, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v2, v2, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v8, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2, v5, v8, v7}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2389
    instance-of v5, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v5, :cond_28

    .line 2390
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v15, :cond_17

    .line 2393
    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleText(Ljava/lang/String;)V

    :cond_17
    if-eqz v16, :cond_18

    .line 2397
    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleColor(Ljava/lang/String;)V

    :cond_18
    if-eqz v17, :cond_19

    move-object/from16 v4, v38

    .line 2401
    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleSize(Ljava/lang/String;)V

    :cond_19
    if-eqz v18, :cond_1a

    move-object/from16 v4, v35

    .line 2405
    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/ITitleNView;->setTitleOverflow(Ljava/lang/String;)V

    :cond_1a
    if-eqz v34, :cond_1b

    .line 2409
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    move-object/from16 v5, v37

    invoke-static {v2, v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewPadding(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    goto :goto_a

    :cond_1b
    move-object/from16 v5, v37

    :goto_a
    if-eqz v19, :cond_1c

    .line 2413
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    const-string v4, "splitLine"

    move-object/from16 v6, p3

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v4, "splitLine"

    move-object v6, v3

    move-object/from16 v3, p4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v3, v36

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lio/dcloud/common/util/TitleNViewUtil;->setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V

    goto :goto_b

    :cond_1c
    move-object v6, v3

    :goto_b
    if-eqz v20, :cond_1d

    .line 2417
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    invoke-static {v2, v5, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    :cond_1d
    if-eqz v21, :cond_1e

    .line 2421
    invoke-static {v2, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setProgress(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_1e
    if-eqz v23, :cond_1f

    .line 2426
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setSearchInput(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_1f
    if-eqz v22, :cond_20

    .line 2430
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/ITitleNView;->clearButtons()V

    .line 2431
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setButtons(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 2432
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    invoke-static {v2, v5, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    :cond_20
    if-nez v31, :cond_21

    if-eqz v22, :cond_22

    .line 2437
    :cond_21
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    invoke-static {v2, v5, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setHomeButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    :cond_22
    if-eqz v29, :cond_23

    .line 2441
    invoke-static {v2, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setRedDotColor(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_23
    if-eqz v27, :cond_24

    .line 2445
    invoke-static {v2, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleAlign(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_24
    if-eqz p1, :cond_25

    if-eqz v32, :cond_25

    .line 2449
    iget-object v3, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 2450
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v33, v8, v9

    const-string v9, "setStyle"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\',{\'backgroundImage\':\'"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v32

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'}]"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v8, v7

    const/4 v6, 0x1

    .line 2451
    invoke-interface {v3, v4, v6, v8}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_25
    if-eqz v2, :cond_26

    const-string v3, "backgroundRepeat"

    .line 2455
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "backgroundRepeat"

    .line 2456
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundRepeat(Ljava/lang/String;)V

    :cond_26
    if-eqz v24, :cond_27

    .line 2459
    invoke-static {v2, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setSubTitleIcon(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_27
    if-eqz v25, :cond_28

    .line 2462
    invoke-static {v2, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setShadow(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    .line 2465
    :cond_28
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2466
    iget-object v1, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->titleNViewRefresh()V

    :cond_29
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .locals 8

    const/4 v0, 0x0

    .line 2004
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2005
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    .line 2006
    iget-object v2, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v0, v3}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2009
    :try_start_0
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2010
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"code\":-100,\"message\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lio/dcloud/base/R$string;->dcloud_ui_webview_not_finished:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 2014
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2015
    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "{\"code\":-100,\"message\":\"\"+sWeb.getContext().getString(R.string.dcloud_ui_webview_not_finished)+\"\"}"

    move-object v2, p1

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 2017
    :cond_1
    invoke-virtual {v0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    const/4 v0, 0x2

    .line 2018
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "auto"

    if-eqz p2, :cond_2

    const-string v2, "type"

    .line 2020
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2021
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_0

    :cond_2
    move-object v5, v0

    .line 2024
    :goto_0
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2026
    new-instance v0, Lio/dcloud/feature/ui/c$e;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lio/dcloud/feature/ui/c$e;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "auto"

    if-eqz v1, :cond_9

    const-string v5, "acceleration"

    .line 2127
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2128
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const-string v5, "capture"

    const-string v6, "action"

    const-string v7, "none"

    .line 2130
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2132
    iget-object v8, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v8, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    const-string v11, "getNativeView"

    const-string v12, "nativeobj"

    const/4 v13, 0x4

    const-string v14, "nativeView"

    const-string v15, "__id__"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v9, "type"

    if-eqz v8, :cond_4

    .line 2135
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    .line 2139
    :cond_1
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2140
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2141
    iget-object v5, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v5, v5, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v10, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v4, v13, [Ljava/lang/Object;

    aput-object p1, v4, v17

    aput-object v12, v4, v16

    const/4 v13, 0x2

    aput-object v11, v4, v13

    move-object/from16 v19, v11

    new-array v11, v13, [Ljava/lang/Object;

    iget-object v13, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v13, v11, v17

    aput-object v8, v11, v16

    const/4 v8, 0x3

    aput-object v11, v4, v8

    const/16 v8, 0xa

    invoke-interface {v5, v10, v8, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2142
    instance-of v5, v4, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v5, :cond_5

    .line 2143
    iget-object v5, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v5, v4, v6}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    .line 2144
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_2
    move-object/from16 v19, v11

    .line 2147
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-direct {v0, v4, v8}, Lio/dcloud/feature/ui/c;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v4

    .line 2148
    iget-object v5, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v5, v4}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 2149
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v7}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v11

    :cond_5
    :goto_2
    const-string v4, "otherCapture"

    .line 2153
    iget-object v2, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->findPageB()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2156
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2159
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    .line 2163
    :cond_6
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2164
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2165
    iget-object v1, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v1, v1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v17

    aput-object v12, v5, v16

    const/4 v7, 0x2

    aput-object v19, v5, v7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v17

    aput-object v3, v7, v16

    const/4 v3, 0x3

    aput-object v7, v5, v3

    const/16 v3, 0xa

    invoke-interface {v1, v4, v3, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2166
    instance-of v3, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v3, :cond_a

    .line 2167
    check-cast v1, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v2, v1, v6}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2168
    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 2171
    :cond_7
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lio/dcloud/feature/ui/c;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2173
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 2174
    invoke-interface {v2, v1, v7}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 2180
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 2181
    iget-object v4, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    .line 2182
    iget-object v2, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->findPageB()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2184
    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IFrameView;->setSnapshot(Landroid/graphics/Bitmap;)V

    .line 2185
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setAccelerationType(Ljava/lang/String;)V

    :cond_a
    :goto_4
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 172
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    const-string v1, "https://"

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    .line 184
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    .line 186
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 191
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 195
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"filiation\": {\"parent\":\"%s\",\"child\":\"%s\"}}"

    .line 197
    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    .line 198
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .locals 4

    .line 2027
    check-cast p1, Lio/dcloud/feature/ui/c;

    .line 2028
    iget-boolean v0, p1, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz v0, :cond_0

    .line 2029
    iget-wide v0, p1, Lio/dcloud/feature/ui/c;->v:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lio/dcloud/feature/ui/c;->v:J

    const/4 v0, 0x1

    .line 2030
    iput-boolean v0, p2, Lio/dcloud/feature/ui/c;->G:Z

    .line 2031
    iput-boolean v0, p2, Lio/dcloud/feature/ui/c;->J:Z

    const/4 v1, 0x0

    .line 2032
    iput-boolean v1, p2, Lio/dcloud/feature/ui/c;->H:Z

    .line 2034
    iget-object v2, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v2, p0}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 2037
    iget-object v3, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, p3, p2, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 2038
    iget-object p3, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object p3, p3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object p2, v3, v1

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object p1, v3, v0

    const/16 p1, 0x2d

    invoke-interface {p3, v2, p1, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 2039
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2042
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2047
    :cond_1
    iget-object v1, p1, Lio/dcloud/feature/ui/c;->X:Lio/dcloud/feature/ui/c;

    if-nez v1, :cond_2

    goto :goto_0

    .line 2052
    :cond_2
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p2

    .line 2054
    :goto_0
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v1

    .line 2055
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2056
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "http://"

    .line 2057
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 2062
    :cond_3
    invoke-static {p2}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2063
    invoke-static {v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2066
    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2067
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2068
    invoke-interface {v0, p2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "{\"open\": {\"opener\":\"%s\",\"opened\":\"%s\"}}"

    .line 2069
    invoke-static {p1, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 2467
    :cond_0
    iget-object v0, p1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 2468
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 p2, 0x3

    aput-object v0, v2, p2

    .line 2469
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2470
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p1, v1, v5

    const-string p1, "weexViewUpdate"

    aput-object p1, v1, v3

    aput-object v2, v1, p2

    const/16 p1, 0xa

    .line 2471
    invoke-interface {v0, v6, p1, v1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Lio/dcloud/feature/ui/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lio/dcloud/feature/ui/c;",
            ">;",
            "Lio/dcloud/feature/ui/c;",
            ")V"
        }
    .end annotation

    const-class v0, Lio/dcloud/feature/ui/c;

    monitor-enter v0

    .line 221
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 222
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    iget-object v3, p3, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lio/dcloud/common/util/JSUtil;->broadcastWebviewEvent(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 225
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    iget-object p3, p3, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p0, p1}, Lio/dcloud/common/util/JSUtil;->broadcastWebviewEvent(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private c(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 27
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 28
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 30
    iget-object v6, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v5, v7}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v9

    const/4 v5, 0x2

    .line 31
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 36
    invoke-static {v2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "RGB565"

    if-eqz v2, :cond_1

    const-string v8, "check"

    .line 38
    invoke-virtual {v2, v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v10, "checkKeyboard"

    .line 39
    invoke-virtual {v2, v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "bit"

    .line 40
    invoke-virtual {v2, v11, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "clip"

    .line 41
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 44
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 45
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v13

    const-string v14, "left"

    .line 46
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11, v3, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v14

    const-string v15, "top"

    .line 47
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12, v3, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v15, "width"

    .line 48
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v11, v11, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v11

    const-string v15, "height"

    .line 49
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12, v12, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 50
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v3, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v6

    move v11, v8

    move-object v13, v12

    goto :goto_1

    :cond_0
    move v3, v8

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    move v11, v3

    move-object v14, v6

    move-object v13, v7

    :goto_1
    move v12, v10

    .line 53
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v8

    invoke-direct {v0, v1, v4}, Lio/dcloud/feature/ui/c;->g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;

    move-result-object v10

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v15, v7

    goto :goto_2

    :cond_2
    new-instance v2, Lio/dcloud/feature/ui/c$h;

    invoke-direct {v2, v0, v1, v5}, Lio/dcloud/feature/ui/c$h;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    move-object v15, v2

    .line 59
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v7, Lio/dcloud/feature/ui/c$i;

    invoke-direct {v7, v0, v1, v5}, Lio/dcloud/feature/ui/c$i;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v16, v7

    .line 60
    invoke-interface/range {v8 .. v16}, Lio/dcloud/common/DHInterface/IFrameView;->draw(Landroid/view/View;Lio/dcloud/common/DHInterface/INativeBitmap;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private d(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .locals 6

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v4

    .line 6
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    iget v5, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    invoke-static {v3, v5}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_0

    .line 9
    :cond_0
    iget v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iput v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    .line 13
    :goto_0
    invoke-virtual {v4, v1}, Lio/dcloud/common/adapter/util/AnimOptions;->setCloseAnimType(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 14
    iput-byte v3, v4, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NWindow.hide view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "View_Visible_Path"

    invoke-static {v4, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean v3, p3, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz v3, :cond_2

    .line 18
    invoke-direct {p3}, Lio/dcloud/feature/ui/c;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    .line 21
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 22
    invoke-direct {p0, p1, p2, p3, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v3, 0x17

    invoke-interface {p1, p2, v3, v1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const-string p2, "hide"

    .line 25
    invoke-virtual {p0, p2, p1}, Lio/dcloud/feature/ui/c;->onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, v0, v2}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    .line 28
    :goto_1
    iput-boolean v0, p3, Lio/dcloud/feature/ui/c;->G:Z

    goto :goto_2

    .line 31
    :cond_2
    iget-object p1, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, v0, v2}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    .line 33
    :goto_2
    iput-boolean v2, p3, Lio/dcloud/feature/ui/c;->H:Z

    return-void
.end method

.method private e(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "isUniH5"

    const-string v5, "debugRefresh"

    const-string v6, "animationAlphaBGColor"

    .line 2
    iget-boolean v0, v3, Lio/dcloud/feature/ui/c;->K:Z

    if-nez v0, :cond_21

    .line 4
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    move-object v7, v0

    check-cast v7, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 5
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    .line 6
    invoke-static {v0, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v10

    .line 9
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewOptions;->isTabItem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v11, "background"

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v13, "tabBGColor"

    .line 13
    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v13, 0x0

    .line 20
    :goto_0
    invoke-virtual {v1, v10, v12}, Lio/dcloud/feature/ui/c;->a(Lorg/json/JSONObject;Z)Z

    move-result v14

    .line 21
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v15, v0, 0x1

    if-eqz v15, :cond_1

    .line 24
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "transparent"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v12, "webviewBGTransparent"

    .line 29
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 30
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 31
    iget-object v12, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v12

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v12, v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setBgcolor(I)V

    .line 34
    :cond_2
    iget-boolean v12, v3, Lio/dcloud/feature/ui/c;->L:Z

    const/16 v16, 0x0

    if-nez v12, :cond_3

    if-eqz v15, :cond_a

    if-nez v0, :cond_a

    :cond_3
    if-eqz v15, :cond_7

    .line 37
    :try_start_1
    invoke-static {v10, v11}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 39
    iget-object v12, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v10, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_4
    iget-object v6, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v6, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v10, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_5
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-static {v10, v4}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 48
    :cond_6
    iget-object v0, v8, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v8, v0}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    :cond_7
    :goto_2
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    .line 55
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    goto :goto_3

    :cond_8
    move-object/from16 v0, v16

    .line 57
    :goto_3
    iget-object v4, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v7

    if-eqz v0, :cond_9

    .line 58
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget-object v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v4, :cond_9

    .line 59
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iput-object v0, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 61
    :cond_9
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v0

    if-nez v0, :cond_a

    .line 62
    iget-object v0, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v9, 0x0

    aput-object v5, v6, v9

    const/16 v5, 0x4a

    invoke-interface {v0, v4, v5, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_a
    invoke-virtual {v8}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v7

    .line 68
    :cond_b
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    const/4 v4, 0x1

    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    .line 71
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 72
    iget v5, v4, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 75
    :try_start_2
    iget-object v0, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    iget-object v6, v4, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 79
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c
    move-object/from16 v0, v16

    .line 81
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOption _old_win_options="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ";_new_json_option="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "shutao"

    invoke-static {v8, v6}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v6

    invoke-static {v4, v6}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 84
    iget-object v8, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v8

    const-string v9, "shareable"

    .line 85
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "videoFullscreen"

    .line 87
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 88
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v9, "pullToRefresh"

    .line 91
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 92
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 93
    iget-object v11, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v11

    iget-object v12, v4, Lio/dcloud/common/adapter/util/ViewOptions;->mPullToRefresh:Lorg/json/JSONObject;

    invoke-static {v12, v9}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v12, "pull_down_refresh"

    invoke-interface {v11, v12, v9}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    const-string v9, "bounce"

    .line 97
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 98
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_f
    iget-object v9, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mCacheMode:Ljava/lang/String;

    invoke-interface {v2, v9}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 103
    iget-object v9, v1, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    invoke-static {v9, v10}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/b;->f()V

    const-string v9, "titleNView"

    .line 107
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 108
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v1, v2, v3, v0, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_10
    const-string v9, "navigationbar"

    .line 110
    invoke-static {v10, v9}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 111
    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v1, v2, v3, v0, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_11
    :goto_5
    const-string v0, "uniNView"

    .line 114
    invoke-static {v10, v0}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 115
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Lorg/json/JSONObject;)V

    .line 117
    :cond_12
    iget-boolean v0, v3, Lio/dcloud/feature/ui/c;->J:Z

    const-string v2, "geolocation"

    const-string v9, "plusrequire"

    const-string v11, "injection"

    const-string v12, "scalable"

    if-eqz v0, :cond_1e

    .line 118
    iget v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    move/from16 v16, v13

    .line 120
    iget v13, v6, Lio/dcloud/common/adapter/util/ViewOptions;->opacity:F

    .line 121
    invoke-virtual {v6, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    move-result v17

    .line 122
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->checkAlphaTransparent(I)Z

    move-result v0

    move/from16 v18, v15

    iget v15, v6, Lio/dcloud/common/adapter/util/ViewOptions;->background:I

    invoke-static {v15}, Lio/dcloud/common/util/PdrUtil;->checkAlphaTransparent(I)Z

    move-result v15

    if-eq v0, v15, :cond_13

    const/4 v0, 0x1

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    .line 123
    :goto_6
    iget v15, v6, Lio/dcloud/common/adapter/util/ViewOptions;->opacity:F

    cmpl-float v13, v13, v15

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    goto :goto_7

    :cond_14
    const/4 v13, 0x0

    :goto_7
    or-int/2addr v0, v13

    const-string v13, "render"

    .line 125
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    const-string v15, "onscreen"

    .line 126
    invoke-virtual {v10, v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "always"

    .line 127
    invoke-static {v13, v15}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 128
    iget-object v15, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v15, v13}, Lio/dcloud/common/DHInterface/IFrameView;->setNeedRender(Z)V

    .line 132
    :cond_15
    invoke-virtual {v6}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v13

    iput-boolean v13, v3, Lio/dcloud/feature/ui/c;->L:Z

    const-string v13, "scrollIndicator"

    .line 134
    invoke-static {v10, v13}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_16

    .line 135
    invoke-virtual {v6}, Lio/dcloud/common/adapter/util/ViewOptions;->getScrollIndicator()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Lio/dcloud/common/DHInterface/IWebview;->setScrollIndicator(Ljava/lang/String;)V

    .line 138
    :cond_16
    invoke-static {v10, v12}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 139
    iget-boolean v13, v6, Lio/dcloud/common/adapter/util/ViewOptions;->scalable:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_17
    iget-object v12, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mInjection:Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v11, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mPlusrequire:Ljava/lang/String;

    invoke-interface {v8, v9, v11}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v9, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mGeoInject:Ljava/lang/String;

    invoke-interface {v8, v2, v9}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const-string v8, "transition"

    .line 148
    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    .line 149
    iget-object v8, v6, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransition(Lorg/json/JSONObject;)V

    .line 150
    iget-object v8, v6, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    const-string v9, "duration"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x0

    .line 151
    iput v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration:I

    goto :goto_8

    :cond_18
    const/4 v8, 0x0

    .line 154
    iput v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration:I

    :cond_19
    :goto_8
    const-string v8, "transform"

    .line 156
    invoke-static {v10, v8}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 157
    iget-object v8, v6, Lio/dcloud/common/adapter/util/ViewOptions;->transform:Lorg/json/JSONObject;

    invoke-virtual {v2, v8}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransform(Lorg/json/JSONObject;)V

    :cond_1a
    if-nez v17, :cond_1c

    if-nez v14, :cond_1c

    if-eqz v0, :cond_1b

    goto :goto_9

    .line 170
    :cond_1b
    invoke-virtual {v4, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 171
    iget v0, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    if-eq v5, v0, :cond_1f

    .line 172
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 173
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 174
    iget-object v0, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_a

    .line 175
    :cond_1c
    :goto_9
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/IFrameView;->setFrameOptions_Animate(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 177
    invoke-virtual {v7, v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Animate(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 179
    iget-object v2, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const/4 v4, 0x2

    iput-byte v4, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    iget-object v5, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    if-eqz v17, :cond_1d

    const/4 v14, 0x0

    :cond_1d
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    .line 181
    iget-object v0, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x7

    invoke-interface {v0, v4, v5, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_1e
    move/from16 v16, v13

    move/from16 v18, v15

    .line 192
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    move-result v0

    .line 193
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions_Birth()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    invoke-virtual {v4, v10}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 195
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lio/dcloud/common/adapter/util/ViewOptions;->getScrollIndicator()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Lio/dcloud/common/DHInterface/IWebview;->setScrollIndicator(Ljava/lang/String;)V

    .line 198
    iget-boolean v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->scalable:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v12, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mInjection:Ljava/lang/String;

    invoke-interface {v8, v11, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v4, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mPlusrequire:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v4, v6, Lio/dcloud/common/adapter/util/ViewOptions;->mGeoInject:Ljava/lang/String;

    invoke-interface {v8, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1f

    .line 206
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 207
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 214
    iget-object v2, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    .line 217
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v6, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-static {v2, v4, v5, v6, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    :cond_1f
    :goto_a
    if-nez v18, :cond_20

    if-eqz v16, :cond_21

    .line 221
    :cond_20
    iget-object v0, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v3, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/16 v3, 0x4b

    invoke-interface {v0, v2, v3, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method private g(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/INativeBitmap;
    .locals 7

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "nativeobj"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "getNativeBitmap"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v4, v6, [Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object p2, v4, v5

    const/4 p1, 0x3

    aput-object v4, v2, p1

    const/16 p1, 0xa

    .line 3
    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/INativeBitmap;

    return-object p1
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v1, v1, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const-string v2, "adid"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lio/dcloud/feature/ui/c$j;

    invoke-direct {v3, p0, v0, v1}, Lio/dcloud/feature/ui/c$j;-><init>(Lio/dcloud/feature/ui/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v2, v0, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz v2, :cond_0

    invoke-direct {v0}, Lio/dcloud/feature/ui/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p0}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 2
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->J:Z

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->K:Z

    if-nez v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->M:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 13
    iput-byte v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 18
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->e()V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    iput-byte v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/feature/ui/c;->G:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/feature/ui/c;->H:Z

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "titleUpdate"

    const-string v6, "tabBGColor"

    .line 226
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v7

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    .line 227
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v9

    .line 228
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v11, "needTouchEvent"

    const-string v12, "getFavoriteOptions"

    const-string v13, "setShareOptions"

    const-string v14, "overrideUrlLoading"

    const-string v15, "getShareOptions"

    const-string v8, "setFavoriteOptions"

    move-object/from16 v16, v6

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v10, "isPause"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x54

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "getMetrics"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "getTitle"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2f

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "webview_animate"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x47

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x43

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "loadData"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x35

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "setTitleNViewSearchInputText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x25

    goto/16 :goto_1

    :sswitch_7
    const-string v10, "children"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x34

    goto/16 :goto_1

    :sswitch_8
    const-string v10, "setPullToRefresh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_9
    const-string v10, "removeTitleNViewButtonBadge"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x21

    goto/16 :goto_1

    :sswitch_a
    const-string v10, "appendNativeView"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x39

    goto/16 :goto_1

    :sswitch_b
    const-string v10, "setStyle"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4e

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "showTitleNViewButtonRedDot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x22

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "findViewById"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2e

    goto/16 :goto_1

    :sswitch_f
    const-string v10, "setFixBottom"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3f

    goto/16 :goto_1

    :sswitch_10
    const-string v10, "setVolumeButtonEnabled"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1f

    goto/16 :goto_1

    :sswitch_11
    const-string v10, "setBlockNetworkImage"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4f

    goto/16 :goto_1

    :sswitch_13
    const-string v10, "overrideResourceRequest"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v10, "getOption"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_15
    const-string v10, "updateSubNViews"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4c

    goto/16 :goto_1

    :sswitch_16
    const-string v10, "canBack"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_17
    const-string v10, "getTitleNViewSearchInputText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x26

    goto/16 :goto_1

    :sswitch_18
    const-string v10, "setOption"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_19
    const-string v10, "endPullToRefresh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_1a
    const-string v10, "showBehind"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x45

    goto/16 :goto_1

    :sswitch_1b
    const-string v10, "pause"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x52

    goto/16 :goto_1

    :sswitch_1c
    const-string v10, "setBounce"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_1

    :sswitch_1d
    const-string v10, "close"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_1e
    const-string v10, "clear"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_1f
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_20
    const-string v10, "stop"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_21
    const-string v10, "show"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_22
    const-string v10, "load"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_23
    const-string v10, "hide"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_24
    const-string v10, "draw"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3c

    goto/16 :goto_1

    :sswitch_25
    const-string v10, "drag"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x42

    goto/16 :goto_1

    :sswitch_26
    const-string v10, "back"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_27
    const-string v10, "beginPullToRefresh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_1

    :sswitch_28
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    goto/16 :goto_1

    :sswitch_29
    const-string v10, "isVisible"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2b

    goto/16 :goto_1

    :sswitch_2a
    const-string v10, "removeNativeView"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x36

    goto/16 :goto_1

    :sswitch_2b
    const-string v10, "setCssText"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x44

    goto/16 :goto_1

    :sswitch_2c
    const-string v10, "setCssFile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3e

    goto/16 :goto_1

    :sswitch_2d
    const-string v10, "evalJSSync"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_2e
    const-string v10, "webview_restore"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x48

    goto/16 :goto_1

    :sswitch_2f
    const-string v10, "setContentVisible"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2d

    goto/16 :goto_1

    :sswitch_30
    const-string v10, "clearSnapshot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3b

    goto/16 :goto_1

    :sswitch_31
    const-string v10, "hideSoftKeybord"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1d

    goto/16 :goto_1

    :sswitch_32
    const-string v10, "removeEventListener"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2a

    goto/16 :goto_1

    :sswitch_33
    const-string v10, "getSubNViews"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4b

    goto/16 :goto_1

    :sswitch_34
    const-string v10, "addEventListener"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x29

    goto/16 :goto_1

    :sswitch_35
    const-string v10, "forward"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_36
    const-string v10, "setVisible"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x2c

    goto/16 :goto_1

    :sswitch_37
    const-string v10, "isHardwareAccelerated"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3d

    goto/16 :goto_1

    :sswitch_38
    const-string v10, "resume"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x53

    goto/16 :goto_1

    :sswitch_39
    const-string v10, "remove"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x37

    goto/16 :goto_1

    :sswitch_3a
    const-string v10, "reload"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1c

    goto/16 :goto_1

    :sswitch_3b
    const-string v10, "parent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x33

    goto/16 :goto_1

    :sswitch_3c
    const-string v10, "opener"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x30

    goto/16 :goto_1

    :sswitch_3d
    const-string v10, "opened"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x31

    goto/16 :goto_1

    :sswitch_3e
    const-string v10, "checkRenderedContent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x46

    goto/16 :goto_1

    :sswitch_3f
    const-string v10, "interceptTouchEvent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4a

    goto/16 :goto_1

    :sswitch_40
    const-string v10, "setTitleNViewButtonStyle"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x27

    goto/16 :goto_1

    :sswitch_41
    const-string v10, "setPreloadJsFile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_42
    const-string v10, "setTitleNViewButtonBadge"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto/16 :goto_1

    :sswitch_43
    const-string v10, "removeFromParent"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x32

    goto/16 :goto_1

    :sswitch_44
    const-string v10, "getUrl"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_45
    const-string v10, "resetBounce"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_46
    const-string v10, "hideTitleNViewButtonRedDot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto/16 :goto_1

    :sswitch_47
    const-string v10, "setAssistantType"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x28

    goto/16 :goto_1

    :sswitch_48
    const-string v10, "evalJS"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_49
    const-string v10, "setSoftinputTemporary"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x51

    goto/16 :goto_1

    :sswitch_4a
    const-string v10, "getNavigationbar"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x40

    goto/16 :goto_1

    :sswitch_4b
    const-string v10, "append"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x38

    goto/16 :goto_1

    :sswitch_4c
    const-string v10, "setRenderedEventOptions"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x49

    goto :goto_1

    :sswitch_4d
    const-string v10, "showSoftKeybord"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x1e

    goto :goto_1

    :sswitch_4e
    const-string v10, "appendPreloadJsFile"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_4f
    const-string v10, "setTitleNViewSearchInputFocus"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x24

    goto :goto_1

    :sswitch_50
    const-string v10, "captureSnapshot"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3a

    goto :goto_1

    :sswitch_51
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x4d

    goto :goto_1

    :sswitch_52
    const-string v10, "listenResourceLoading"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_53
    const-string v10, "canForward"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto :goto_1

    :sswitch_54
    const-string v10, "getTitleNView"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    const/16 v3, 0x41

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v10, "nativeobj"

    const-string v6, ""

    move-object/from16 v18, v14

    const-string v14, "{\'uuid\':%s,\'id\':%s}"

    move-object/from16 v19, v5

    const-string v5, "bounce_register"

    move-object/from16 p2, v5

    const-string v5, "pull_down_refresh"

    const-string v20, "undefined"

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_12

    .line 913
    :pswitch_0
    :try_start_2
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 915
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isPause()Z

    move-result v2

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 916
    :pswitch_1
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 918
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->resume()V

    goto :goto_2

    .line 919
    :pswitch_2
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 921
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->pause()V

    goto :goto_2

    .line 922
    :pswitch_3
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const/4 v3, 0x0

    .line 923
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 924
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setHTMLInputRect(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_2

    .line 925
    :pswitch_4
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v15}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 927
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_5
    const/4 v2, 0x0

    .line 928
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 929
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v13, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 930
    :pswitch_6
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v12}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 931
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 932
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_7
    const/4 v2, 0x0

    .line 933
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 934
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v8, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 935
    :pswitch_8
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v3, :cond_1

    .line 936
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/SubNViewsUtil;->updateSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONArray;)V

    goto/16 :goto_2

    .line 937
    :pswitch_9
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v3, :cond_1

    .line 938
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 939
    iget-object v3, v2, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildNativeViewList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 941
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 942
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    .line 943
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeView;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 945
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 946
    :cond_3
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 947
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mSubNViews:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_a
    const/4 v2, 0x0

    .line 948
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 949
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IFrameView;->interceptTouchEvent(Z)V

    goto/16 :goto_2

    :pswitch_b
    const/4 v2, 0x0

    .line 950
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "type"

    .line 951
    :try_start_3
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->a0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/feature/ui/c;->a0:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "interval"

    .line 952
    :try_start_4
    iget v4, v1, Lio/dcloud/feature/ui/c;->b0:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lio/dcloud/feature/ui/c;->b0:I

    goto/16 :goto_2

    .line 953
    :pswitch_c
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->restore()V

    goto/16 :goto_2

    :pswitch_d
    const/4 v3, 0x0

    .line 954
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 955
    invoke-static {v4, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 956
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5, v2, v3, v4}, Lio/dcloud/common/DHInterface/IFrameView;->animate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 957
    :pswitch_e
    invoke-direct {v1, v2, v4}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto/16 :goto_2

    :pswitch_f
    const/4 v2, 0x1

    .line 958
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 959
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v3

    if-nez v3, :cond_1

    .line 961
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 963
    :try_start_6
    invoke-direct {v1, v2, v1, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    const/4 v2, 0x0

    .line 964
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 966
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v4, 0x0

    :try_start_7
    invoke-interface {v3, v4, v2}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 967
    :pswitch_11
    :try_start_8
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const-string v3, "true"

    .line 968
    invoke-interface {v2, v11, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v8, "false"

    goto/16 :goto_13

    :pswitch_12
    const/4 v3, 0x0

    .line 969
    :try_start_9
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v3, 0x1

    .line 970
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v3, 0x2

    .line 971
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x3

    .line 972
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    const-string v3, "direction"

    .line 975
    invoke-static {v5, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "moveMode"

    invoke-static {v5, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 976
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    const-string v9, "view"

    .line 978
    invoke-static {v7, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 979
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 980
    iget-object v11, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v11, v6, v9, v9}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v6

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_5

    .line 984
    iget-object v11, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v11, v11, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v12, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v2, 0x1

    aput-object v10, v13, v2

    const-string v2, "getNativeView"

    const/4 v10, 0x2

    aput-object v2, v13, v10

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v10, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v14, 0x0

    aput-object v10, v2, v14

    const/4 v10, 0x1

    aput-object v9, v2, v10

    const/4 v9, 0x3

    aput-object v2, v13, v9

    const/16 v2, 0xa

    invoke-interface {v11, v12, v2, v13}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 985
    instance-of v9, v2, Landroid/view/View;

    if-eqz v9, :cond_5

    .line 986
    check-cast v2, Landroid/view/View;

    move-object/from16 v23, v2

    goto :goto_5

    :cond_5
    const/16 v23, 0x0

    .line 989
    :goto_5
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v2, v8, v8, v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-nez v6, :cond_6

    const/16 v20, 0x0

    goto :goto_6

    .line 990
    :cond_6
    iget-object v6, v6, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    move-object/from16 v20, v6

    :goto_6
    if-nez v2, :cond_7

    const/16 v21, 0x0

    goto :goto_7

    .line 991
    :cond_7
    iget-object v2, v2, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    move-object/from16 v21, v2

    :goto_7
    if-eqz v4, :cond_8

    move-object/from16 v22, v4

    goto :goto_8

    :cond_8
    const/16 v22, 0x0

    :goto_8
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .line 992
    invoke-virtual/range {v17 .. v23}, Lio/dcloud/common/adapter/util/ViewOptions;->setDragData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_2

    .line 993
    :pswitch_13
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 994
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    .line 995
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v10, v5, v6

    const-string v6, "getNativeView"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x3

    aput-object v6, v5, v2

    const/16 v2, 0xa

    .line 996
    invoke-interface {v3, v4, v2, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 999
    instance-of v3, v2, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v3, :cond_1

    .line 1000
    check-cast v2, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/INativeView;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1002
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 1003
    :pswitch_14
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const/4 v3, 0x0

    .line 1004
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setFixBottom(I)V

    goto/16 :goto_2

    :pswitch_15
    const/4 v3, 0x0

    .line 1005
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1007
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v4, 0x0

    :try_start_a
    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 1009
    :pswitch_16
    :try_start_b
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1010
    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 1011
    :pswitch_17
    invoke-direct {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_2

    :pswitch_18
    const/4 v2, 0x0

    .line 1012
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1013
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IFrameView;->clearSnapshot(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1014
    :pswitch_19
    invoke-virtual {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_2

    :pswitch_1a
    const/4 v3, 0x1

    .line 1015
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    .line 1016
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_9

    :sswitch_55
    const-string v3, "Maps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v6, 0x0

    goto :goto_a

    :sswitch_56
    const-string v3, "Ad"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v6, 0x4

    goto :goto_a

    :sswitch_57
    const-string v3, "barcode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v6, 0x1

    goto :goto_a

    :sswitch_58
    const-string v3, "LivePusher"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v6, 0x3

    goto :goto_a

    :sswitch_59
    const-string v3, "VideoPlayer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v6, 0x2

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v6, -0x1

    :goto_a
    if-eqz v6, :cond_e

    const/4 v3, 0x1

    if-eq v6, v3, :cond_d

    const/4 v3, 0x2

    if-eq v6, v3, :cond_c

    const/4 v3, 0x3

    if-eq v6, v3, :cond_b

    const/4 v3, 0x4

    if-eq v6, v3, :cond_a

    .line 1039
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->e(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1040
    :cond_a
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1041
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_2

    .line 1042
    :cond_b
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_2

    .line 1044
    :cond_c
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->f(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1045
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_2

    .line 1046
    :cond_d
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1047
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_2

    .line 1048
    :cond_e
    invoke-virtual {v1, v2, v5}, Lio/dcloud/feature/ui/c;->d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 1049
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->j()V

    goto/16 :goto_2

    :pswitch_1b
    const/4 v2, 0x1

    .line 1050
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1051
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v3

    if-nez v3, :cond_f

    .line 1053
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1055
    :cond_f
    :try_start_d
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/b;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 1057
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    goto/16 :goto_2

    :pswitch_1c
    const/4 v2, 0x0

    .line 1058
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v3, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v3

    if-nez v3, :cond_10

    .line 1061
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const/4 v4, 0x0

    :try_start_e
    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v6, v4

    goto/16 :goto_11

    .line 1063
    :cond_10
    :goto_b
    :try_start_f
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1064
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    goto/16 :goto_2

    :pswitch_1d
    const/4 v3, 0x1

    .line 1065
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-virtual {v1, v2, v3}, Lio/dcloud/feature/ui/c;->h(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1e
    const/4 v2, 0x0

    .line 1067
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1068
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    if-eqz v3, :cond_11

    :try_start_10
    const-string v7, "encoding"

    .line 1073
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lio/dcloud/common/util/PdrUtil;->getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "mimeType"

    .line 1074
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lio/dcloud/common/util/PdrUtil;->getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "baseURL"

    .line 1075
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lio/dcloud/common/util/PdrUtil;->getNonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1077
    :cond_11
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v6, v2, v4, v5}, Lio/dcloud/common/DHInterface/IWebview;->loadContentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1078
    :pswitch_1f
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-static {v2}, Lio/dcloud/feature/ui/c;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 1079
    :pswitch_20
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    if-eqz v2, :cond_12

    .line 1080
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_12
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v4, 0x1

    aput-object v20, v2, v4

    .line 1082
    invoke-static {v14, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 1083
    :pswitch_21
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    goto/16 :goto_2

    .line 1087
    :pswitch_22
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->Y:Ljava/util/ArrayList;

    invoke-static {v2}, Lio/dcloud/feature/ui/c;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    move-object v8, v2

    goto/16 :goto_13

    .line 1088
    :pswitch_23
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->X:Lio/dcloud/feature/ui/c;

    if-eqz v2, :cond_13

    .line 1089
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_13
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v2, v3

    const/4 v4, 0x1

    aput-object v20, v2, v4

    .line 1091
    invoke-static {v14, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 1092
    :pswitch_24
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainPageTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :pswitch_25
    const/4 v2, 0x0

    .line 1093
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1094
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/c;->c(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/ui/b;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :pswitch_26
    const/4 v2, 0x0

    .line 1095
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    .line 1096
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->I:Z

    .line 1097
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    if-eqz v2, :cond_14

    sget v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    goto :goto_d

    :cond_14
    sget v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->GONE:I

    :goto_d
    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    .line 1098
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setBgcolor(I)V

    goto/16 :goto_2

    :pswitch_27
    const/4 v2, 0x0

    .line 1099
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    .line 1100
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->G:Z

    .line 1101
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    goto/16 :goto_2

    .line 1102
    :pswitch_28
    iget-boolean v2, v1, Lio/dcloud/feature/ui/c;->G:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :pswitch_29
    const/4 v3, 0x0

    .line 1103
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1104
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-virtual {v1, v3, v2}, Lio/dcloud/feature/ui/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2a
    const/4 v3, 0x0

    .line 1106
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    .line 1107
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1108
    iget-object v5, v1, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->unReceiveTitle()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v2, v19

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1110
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/dcloud/feature/ui/c;->onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2b
    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setAssistantType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1114
    :pswitch_2c
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1116
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1117
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2, v3, v4, v5}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IFrameView;)V

    goto/16 :goto_2

    .line 1118
    :pswitch_2d
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v4, v5, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1120
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1121
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewSearchInputText(Lio/dcloud/common/DHInterface/ITitleNView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    .line 1122
    :pswitch_2e
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1124
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1125
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewSearchInputText(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1126
    :pswitch_2f
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1128
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1129
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewSearchInputFocus(Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1130
    :pswitch_30
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1131
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1132
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1133
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonRedDot(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_2

    .line 1134
    :pswitch_31
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1136
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1137
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonRedDot(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_2

    .line 1138
    :pswitch_32
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1139
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1140
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1141
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonBadge(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_2

    .line 1142
    :pswitch_33
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v3, v3, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    iget-object v6, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v3, v5, v6, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1144
    instance-of v3, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v3, :cond_1

    .line 1145
    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lio/dcloud/common/util/TitleNViewUtil;->titleNViewButtonBadge(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Z)V

    goto/16 :goto_2

    :pswitch_34
    const/4 v2, 0x0

    .line 1146
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1147
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lio/dcloud/common/adapter/util/DeviceInfo;->isVolumeButtonEnabled:Z

    goto/16 :goto_2

    .line 1149
    :pswitch_35
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1150
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1152
    :cond_15
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;Z)V

    goto/16 :goto_2

    .line 1153
    :pswitch_36
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    goto/16 :goto_2

    :pswitch_37
    const/4 v2, 0x0

    .line 1154
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v2

    .line 1155
    invoke-virtual {v1, v1, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Z)V

    goto/16 :goto_2

    .line 1156
    :pswitch_38
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->stopLoading()V

    goto/16 :goto_2

    .line 1157
    :pswitch_39
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1159
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 1160
    invoke-static {v4, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1161
    invoke-static {v4, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1162
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NWindow.load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    if-eqz v4, :cond_16

    .line 1165
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_16

    .line 1166
    new-instance v7, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 1167
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 1168
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1169
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1170
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_16
    const/4 v7, 0x0

    .line 1174
    :cond_17
    instance-of v4, v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v4, :cond_18

    .line 1175
    move-object v4, v2

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4, v6}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkOverrideUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1176
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{url:\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v2, v4, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    return-object v2

    .line 1181
    :cond_18
    invoke-interface {v2, v5, v7}, Lio/dcloud/common/DHInterface/IWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1182
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IWebview;->setOriginalUrl(Ljava/lang/String;)V

    .line 1183
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v6}, Lio/dcloud/common/DHInterface/IWebview;->reload(Ljava/lang/String;)V

    .line 1185
    invoke-direct {v1, v1, v3}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1186
    :pswitch_3a
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 1187
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->clearHistory()V

    goto/16 :goto_2

    :pswitch_3b
    const/4 v3, 0x0

    .line 1188
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    .line 1190
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->canGoForward()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_2

    :pswitch_3c
    const/4 v3, 0x0

    .line 1191
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1192
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    .line 1193
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_2

    .line 1194
    :pswitch_3d
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 1195
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->stopLoading()V

    const/4 v3, 0x1

    .line 1196
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    goto/16 :goto_2

    .line 1197
    :pswitch_3e
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 1198
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->stopLoading()V

    const/4 v3, -0x1

    .line 1199
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    goto/16 :goto_2

    .line 1200
    :pswitch_3f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v7, v2, v5

    const/4 v2, 0x0

    if-nez v7, :cond_19

    const/4 v6, 0x1

    goto :goto_f

    :cond_19
    const/4 v6, 0x0

    .line 1201
    :goto_f
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1202
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v6, :cond_1a

    .line 1204
    new-instance v4, Lio/dcloud/feature/ui/c$c;

    invoke-direct {v4, v1, v3, v2}, Lio/dcloud/feature/ui/c$c;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v4}, Lio/dcloud/common/adapter/util/MessageHandler;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    return-object v2

    .line 1214
    :cond_1a
    new-instance v4, Lio/dcloud/feature/ui/c$d;

    invoke-direct {v4, v1, v3, v2}, Lio/dcloud/feature/ui/c$d;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v4}, Lio/dcloud/common/adapter/util/MessageHandler;->postAndWait(Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1235
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_40
    const/4 v3, 0x0

    .line 1236
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1237
    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/4 v6, 0x1

    .line 1239
    invoke-static {v4, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 1240
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1241
    new-instance v6, Lio/dcloud/feature/ui/c$b;

    invoke-direct {v6, v1, v2, v4}, Lio/dcloud/feature/ui/c$b;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-static {v3, v6}, Lio/dcloud/common/adapter/ui/ReceiveJSValue;->registerCallback(Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)Ljava/lang/String;

    move-result-object v3

    .line 1265
    :cond_1b
    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->evalJS(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1266
    :pswitch_41
    invoke-virtual {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_2

    .line 1267
    :pswitch_42
    invoke-virtual {v1, v2, v4, v1, v9}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1268
    :pswitch_43
    invoke-direct {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->d(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_2

    :pswitch_44
    const/4 v3, 0x0

    .line 1269
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    .line 1270
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/feature/ui/c;->R:Ljava/lang/String;

    .line 1271
    iput-object v2, v1, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/common/DHInterface/IWebview;

    .line 1272
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideUrlLoadingData(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :pswitch_45
    const/4 v2, 0x0

    .line 1273
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 1274
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideResourceRequest(Lorg/json/JSONArray;)V

    goto/16 :goto_2

    :pswitch_46
    const/4 v3, 0x0

    .line 1275
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    .line 1276
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/feature/ui/c;->T:Ljava/lang/String;

    .line 1277
    iput-object v2, v1, Lio/dcloud/feature/ui/c;->U:Lio/dcloud/common/DHInterface/IWebview;

    .line 1278
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setListenResourceLoading(Lorg/json/JSONObject;)V

    goto/16 :goto_2

    :pswitch_47
    const/4 v3, 0x0

    .line 1279
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1280
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1281
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_48
    const/4 v3, 0x0

    .line 1282
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 1283
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v3

    .line 1284
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1285
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1286
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1287
    :pswitch_49
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1288
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_4a
    const/4 v3, 0x0

    .line 1289
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->n()Ljava/lang/String;

    move-result-object v4

    .line 1291
    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_2

    .line 1292
    :pswitch_4b
    invoke-direct {v1, v2, v4, v1}, Lio/dcloud/feature/ui/c;->e(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_2

    .line 1293
    :pswitch_4c
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1294
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1295
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1297
    :cond_1c
    new-instance v3, Lorg/json/JSONObject;

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 1299
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1300
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1301
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "background"

    .line 1302
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1304
    :cond_1d
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_c

    :pswitch_4d
    const/4 v2, 0x0

    .line 1305
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    const-string v4, "blockNetworkImage"

    invoke-interface {v3, v4, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1307
    :pswitch_4e
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->endWebViewEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4f
    move-object/from16 v3, p2

    const/4 v2, 0x0

    .line 1308
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1309
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1310
    :pswitch_50
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2, v5}, Lio/dcloud/common/DHInterface/IWebview;->endWebViewEvent(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_2

    .line 1311
    :pswitch_51
    :try_start_11
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    const-string v3, "pull_down_refresh_begin"
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    const/4 v6, 0x0

    :try_start_12
    invoke-interface {v2, v3, v6}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_12

    :pswitch_52
    const/4 v6, 0x0

    const-string v2, "View_Visible_Path"

    .line 1312
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshLoadingViewsSize setPullToRefresh args="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1313
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    .line 1314
    invoke-static {v4, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    .line 1315
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1316
    iput-object v3, v1, Lio/dcloud/feature/ui/c;->V:Ljava/lang/String;

    .line 1318
    :cond_1e
    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v5, v2}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    const/4 v6, 0x0

    :goto_10
    move-object v2, v0

    .line 2003
    :goto_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    move-object v8, v6

    :goto_13
    return-object v8

    :sswitch_data_0
    .sparse-switch
        -0x7c6fdb4f -> :sswitch_54
        -0x7c0dbf2b -> :sswitch_53
        -0x7a44d379 -> :sswitch_52
        -0x78570760 -> :sswitch_51
        -0x6c3ba4d6 -> :sswitch_50
        -0x6416b82d -> :sswitch_4f
        -0x5ae82b2c -> :sswitch_4e
        -0x5802f0a9 -> :sswitch_4d
        -0x55277c85 -> :sswitch_4c
        -0x541b30e6 -> :sswitch_4b
        -0x52cffa37 -> :sswitch_4a
        -0x4d314fad -> :sswitch_49
        -0x4cf9fd1b -> :sswitch_48
        -0x4c39060a -> :sswitch_47
        -0x4b568ef9 -> :sswitch_46
        -0x4b547749 -> :sswitch_45
        -0x4a7789c7 -> :sswitch_44
        -0x47d6db68 -> :sswitch_43
        -0x477ebf6c -> :sswitch_42
        -0x477b4374 -> :sswitch_41
        -0x46863d5e -> :sswitch_40
        -0x41313b03 -> :sswitch_3f
        -0x3fad9824 -> :sswitch_3e
        -0x3c3c3797 -> :sswitch_3d
        -0x3c3c3789 -> :sswitch_3c
        -0x3b54f756 -> :sswitch_3b
        -0x37b57e67 -> :sswitch_3a
        -0x37b5077c -> :sswitch_39
        -0x37b237d3 -> :sswitch_38
        -0x3592d76b -> :sswitch_37
        -0x32ef8650 -> :sswitch_36
        -0x285c6d3b -> :sswitch_35
        -0x254d19b3 -> :sswitch_34
        -0x21c155b6 -> :sswitch_33
        -0x204670b6 -> :sswitch_32
        -0x1cb1a00e -> :sswitch_31
        -0x1b05accf -> :sswitch_30
        -0x1872c145 -> :sswitch_2f
        -0x17e553b8 -> :sswitch_2e
        -0x170868e0 -> :sswitch_2d
        -0xf0544a3 -> :sswitch_2c
        -0xefef4f2 -> :sswitch_2b
        -0x945e500 -> :sswitch_2a
        -0x6bcc818 -> :sswitch_29
        -0x27467cb -> :sswitch_28
        -0x18b930e -> :sswitch_27
        0x2e04e7 -> :sswitch_26
        0x2f2d34 -> :sswitch_25
        0x2f2d44 -> :sswitch_24
        0x30dd42 -> :sswitch_23
        0x32c4e6 -> :sswitch_22
        0x35dafd -> :sswitch_21
        0x360802 -> :sswitch_20
        0x11431b9 -> :sswitch_1f
        0x5a5b64d -> :sswitch_1e
        0x5a5ddf8 -> :sswitch_1d
        0x5da4d8a -> :sswitch_1c
        0x65825f6 -> :sswitch_1b
        0x10d2e697 -> :sswitch_1a
        0x1712be00 -> :sswitch_19
        0x1c16df77 -> :sswitch_18
        0x1e5a2e5e -> :sswitch_17
        0x20bc90d7 -> :sswitch_16
        0x26abf237 -> :sswitch_15
        0x28e1ab6b -> :sswitch_14
        0x2de6c535 -> :sswitch_13
        0x33d49341 -> :sswitch_12
        0x406fccb8 -> :sswitch_11
        0x47159ef3 -> :sswitch_10
        0x4d3f205e -> :sswitch_f
        0x4ff8c0f0 -> :sswitch_e
        0x505da082 -> :sswitch_d
        0x50d25f2c -> :sswitch_c
        0x53b6de6f -> :sswitch_b
        0x5a812e16 -> :sswitch_a
        0x5d584db2 -> :sswitch_9
        0x6232bdd9 -> :sswitch_8
        0x62ea5dff -> :sswitch_7
        0x682686d2 -> :sswitch_6
        0x6dfa45b0 -> :sswitch_5
        0x6f9d73d1 -> :sswitch_4
        0x739c0c9b -> :sswitch_3
        0x7531c8a2 -> :sswitch_2
        0x76c5fc8d -> :sswitch_1
        0x7b40d2ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

    :sswitch_data_1
    .sparse-switch
        -0x640344e4 -> :sswitch_59
        -0x5a568a8d -> :sswitch_58
        -0x13e21780 -> :sswitch_57
        0x843 -> :sswitch_56
        0x247ab7 -> :sswitch_55
    .end sparse-switch
.end method

.method public a(IIIIII)V
    .locals 0

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "ad"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "addNativeView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .locals 4

    const/4 v0, 0x0

    .line 2186
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2187
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 2188
    iget-object p3, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Lio/dcloud/feature/ui/c$f;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/ui/c$f;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 2194
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lio/dcloud/feature/ui/c$g;

    invoke-direct {v2, p0, p1, p2}, Lio/dcloud/feature/ui/c$g;-><init>(Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 2195
    :goto_1
    invoke-interface {p3, v0, v1, v2}, Lio/dcloud/common/DHInterface/IFrameView;->captureSnapshot(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V
    .locals 9

    .line 2070
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/feature/ui/c;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showWebview url="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "stream_manager"

    invoke-static {v6, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iput v5, p3, Lio/dcloud/feature/ui/c;->B:I

    .line 2073
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/ui/a;->f(Lio/dcloud/feature/ui/c;)V

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v1

    aput-object p4, v0, v2

    .line 2074
    iput-object v0, p3, Lio/dcloud/feature/ui/c;->C:Ljava/lang/Object;

    return-void

    .line 2077
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p3, Lio/dcloud/feature/ui/c;->v:J

    .line 2079
    iput-boolean v5, p3, Lio/dcloud/feature/ui/c;->G:Z

    .line 2080
    invoke-static {p2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 2082
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    .line 2083
    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/ui/c;->P:Ljava/lang/String;

    .line 2084
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2085
    iput-object p1, p0, Lio/dcloud/feature/ui/c;->Q:Lio/dcloud/common/DHInterface/IWebview;

    .line 2087
    :cond_1
    iget-object v2, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const-string v7, "auto"

    .line 2090
    invoke-static {v7, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v8, "none"

    if-eqz v7, :cond_2

    .line 2091
    iget-object v7, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v8

    goto :goto_0

    :cond_3
    move-object v7, v0

    :goto_0
    iput-object v7, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 2092
    invoke-static {v8, v7}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v5

    .line 2093
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2094
    iget-object v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string v8, "pop-in"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x12c

    .line 2095
    iput v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    goto :goto_1

    .line 2098
    :cond_4
    iget v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    invoke-static {v6, v8}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    .line 2101
    :cond_5
    :goto_1
    iget-boolean v6, p3, Lio/dcloud/feature/ui/c;->H:Z

    if-nez v6, :cond_6

    iget-boolean v6, p3, Lio/dcloud/feature/ui/c;->J:Z

    if-eqz v6, :cond_6

    const/4 v7, 0x0

    .line 2104
    :cond_6
    iget-object v6, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v6, p0}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v6

    .line 2108
    iget-object v8, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v8, p4, p3, v6}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 2112
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 2114
    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 2116
    iget-boolean p1, p3, Lio/dcloud/feature/ui/c;->H:Z

    if-eqz p1, :cond_7

    .line 2117
    iput-byte v3, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 2118
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p4, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v0, 0x18

    invoke-interface {p1, p2, v0, p4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2120
    :cond_7
    iput-byte v4, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 2121
    iput-boolean v5, p3, Lio/dcloud/feature/ui/c;->J:Z

    .line 2123
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array p4, v1, [Ljava/lang/Object;

    iget-object v0, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v0, p4, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v5

    invoke-interface {p1, p2, v5, p4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2125
    :goto_2
    iput-boolean v4, p3, Lio/dcloud/feature/ui/c;->H:Z

    .line 2126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "show "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";webview_name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "View_Visible_Path"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lio/dcloud/feature/ui/b;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 9
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v15

    .line 14
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->c()B

    move-result v14

    .line 15
    sget-byte v1, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_DOCK:B

    if-ne v14, v1, :cond_1

    .line 16
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->b()B

    move-result v1

    invoke-virtual {v15, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setPosition(I)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v15, v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setPosition(I)V

    .line 20
    :goto_0
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 22
    :cond_2
    instance-of v1, v8, Lio/dcloud/feature/ui/c;

    const/4 v2, 0x0

    const-string v9, "View_Visible_Path"

    const/4 v13, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 23
    move-object v1, v8

    check-cast v1, Lio/dcloud/feature/ui/c;

    .line 26
    invoke-direct {v0, v8, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;Lio/dcloud/feature/ui/c;)V

    .line 28
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v4, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/feature/ui/c;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 29
    iput v4, v1, Lio/dcloud/feature/ui/c;->B:I

    .line 30
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v4, v1}, Lio/dcloud/feature/ui/a;->f(Lio/dcloud/feature/ui/c;)V

    .line 34
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, v1, Lio/dcloud/feature/ui/c;->H:Z

    if-nez v4, :cond_5

    .line 35
    iput-boolean v3, v1, Lio/dcloud/feature/ui/c;->G:Z

    .line 36
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4, v3, v3}, Lio/dcloud/common/DHInterface/IFrameView;->setVisible(ZZ)V

    .line 37
    iget-object v4, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of v5, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v5, :cond_4

    .line 38
    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v5, "child_initialize_show"

    invoke-virtual {v4, v5, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string v4, "NWindow.appendView childView set visible true"

    .line 40
    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_5
    iget-object v4, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v4, v5}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "append "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-boolean v3, v1, Lio/dcloud/feature/ui/c;->M:Z

    .line 48
    iput-boolean v3, v1, Lio/dcloud/feature/ui/c;->J:Z

    .line 49
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 50
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    goto :goto_1

    .line 52
    :cond_6
    instance-of v1, v8, Lio/dcloud/feature/ui/d;

    if-eqz v1, :cond_8

    .line 53
    move-object v1, v8

    check-cast v1, Lio/dcloud/feature/ui/d;

    .line 54
    invoke-virtual {v1}, Lio/dcloud/feature/ui/d;->i()V

    .line 55
    invoke-virtual {v1, v3}, Lio/dcloud/feature/ui/d;->a(Z)V

    :cond_7
    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    .line 58
    :goto_2
    iget-object v1, v8, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    .line 59
    iget-object v4, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    .line 60
    iget-object v4, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v11

    .line 63
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    .line 65
    sget-byte v5, Lio/dcloud/feature/ui/b;->c:B

    if-ne v14, v5, :cond_9

    .line 66
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    .line 67
    invoke-virtual {v12}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v5

    invoke-virtual {v11, v5}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 68
    invoke-virtual {v11, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    :goto_3
    move-object v6, v2

    goto :goto_5

    .line 70
    :cond_9
    sget-byte v5, Lio/dcloud/feature/ui/b;->b:B

    if-ne v14, v5, :cond_a

    .line 71
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    goto :goto_4

    .line 72
    :cond_a
    sget-byte v5, Lio/dcloud/feature/ui/b;->a:B

    if-ne v14, v5, :cond_b

    .line 73
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    .line 78
    :cond_b
    :goto_4
    iget-object v5, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v5, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    .line 79
    invoke-virtual {v7, v5}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    goto :goto_3

    .line 81
    :goto_5
    invoke-virtual {v12}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 82
    iget v2, v11, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v3, v11, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-virtual {v7, v1, v2, v5, v3}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;IIF)Z

    .line 83
    invoke-virtual {v7}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 84
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 85
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 86
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 87
    iput v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    goto :goto_6

    .line 90
    :cond_c
    iget v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v3, v12, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v5, v12, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    invoke-virtual {v7, v1, v2, v3, v5}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;IIF)Z

    .line 93
    :cond_d
    :goto_6
    sget-byte v1, Lio/dcloud/feature/ui/b;->c:B

    if-ne v14, v1, :cond_10

    .line 94
    move-object v1, v6

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-virtual {v7, v1}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 95
    invoke-static {v11, v7}, Lio/dcloud/common/adapter/util/ViewRect;->layoutDockViewRect(Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)V

    const/4 v1, 0x1

    .line 97
    iput-boolean v1, v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    .line 101
    invoke-virtual {v11, v7}, Lio/dcloud/common/adapter/util/ViewRect;->putRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 103
    iget v1, v11, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 104
    iget v2, v11, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 105
    iget v3, v11, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 106
    iget v5, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 107
    sget-boolean v16, Lio/dcloud/common/util/BaseInfo;->isImmersive:Z

    if-eqz v16, :cond_f

    iget-boolean v13, v11, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v13, :cond_f

    .line 108
    invoke-virtual {v12}, Lio/dcloud/common/adapter/util/ViewRect;->isHeightAbsolute()Z

    move-result v13

    if-nez v13, :cond_e

    .line 109
    sget v13, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v5, v13

    .line 111
    :cond_e
    sget v13, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v13

    .line 113
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const-string v6, "NWindow.appendView ---> _webview left="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";top="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";width="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";height="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1, v2, v3, v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    goto :goto_7

    :cond_10
    move-object/from16 v17, v6

    .line 117
    :goto_7
    iget v13, v7, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 118
    iget v6, v7, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 119
    iget v5, v7, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 120
    iget v4, v7, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 122
    iget v2, v11, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v11, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v1, v11, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    move/from16 v18, v5

    iget v5, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v4

    move/from16 v4, v19

    move/from16 v19, v18

    move/from16 v18, v6

    move-object/from16 v22, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v22

    move v6, v13

    move-object/from16 v21, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lio/dcloud/feature/ui/b;->a(IIIIII)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NWindow.appendView childView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object v6, v12

    check-cast v6, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    invoke-virtual {v15, v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setParentFrameItem(Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;)V

    if-eqz v10, :cond_16

    .line 128
    sget-byte v1, Lio/dcloud/feature/ui/b;->a:B

    if-ne v14, v1, :cond_11

    invoke-virtual/range {v21 .. v21}, Lio/dcloud/common/adapter/util/ViewRect;->hasHeightAbsolutevalue()Z

    move-result v1

    if-nez v1, :cond_11

    .line 129
    iget v1, v11, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-lez v1, :cond_11

    goto :goto_8

    :cond_11
    move/from16 v1, v18

    .line 133
    :goto_8
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v9, v12

    move-object v10, v15

    move-object/from16 v2, v17

    move/from16 v12, v19

    move v3, v13

    const/4 v4, 0x0

    move/from16 v13, v20

    move v5, v14

    move v14, v3

    move-object v7, v15

    move v15, v1

    invoke-static/range {v9 .. v15}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IContainerView;Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;IIII)V

    .line 134
    sget-byte v9, Lio/dcloud/feature/ui/b;->c:B

    if-ne v5, v9, :cond_12

    .line 135
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->b()B

    move-result v5

    sget-byte v9, Lio/dcloud/feature/ui/b;->f:B

    if-ne v5, v9, :cond_12

    .line 136
    iget-object v5, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v5, :cond_12

    invoke-static {v5}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 137
    iget-object v5, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v5

    const-string v9, "44px"

    invoke-static {v9, v4, v4, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    move/from16 v5, v20

    add-int/2addr v4, v5

    goto :goto_9

    :cond_12
    move/from16 v5, v20

    move v4, v5

    :goto_9
    move-object/from16 v5, v21

    .line 141
    iget-boolean v9, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v9, :cond_13

    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v2, :cond_13

    .line 142
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v4, v2

    .line 143
    invoke-virtual {v5}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 144
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    sub-int/2addr v1, v2

    .line 147
    :cond_13
    iget-boolean v2, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v2, :cond_14

    .line 148
    invoke-virtual {v5}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result v2

    if-nez v2, :cond_14

    .line 149
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v1, v2

    :cond_14
    const/4 v2, -0x1

    if-ge v1, v2, :cond_15

    const/4 v1, -0x1

    .line 155
    :cond_15
    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    move/from16 v7, v19

    invoke-static {v2, v7, v4, v3, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    goto :goto_a

    :cond_16
    move v3, v13

    move/from16 v1, v18

    move/from16 v7, v19

    move/from16 v5, v20

    .line 157
    invoke-static {v7, v5, v3, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 158
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v2

    invoke-interface {v12, v2, v1}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    :goto_a
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    iput-object v0, v8, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    .line 162
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->sortNativeViewBringToFront()V

    .line 163
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v1, :cond_17

    .line 164
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    .line 166
    :cond_17
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v1}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 168
    iget-object v2, v0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v2, v2, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    iget-object v3, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    iget-object v4, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-static {v2, v3, v4, v1}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 169
    instance-of v2, v1, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v2, :cond_18

    .line 170
    check-cast v1, Lio/dcloud/common/DHInterface/ITitleNView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/ITitleNView;->reMeasure()V

    :cond_18
    return-void
.end method

.method a(Lio/dcloud/feature/ui/c;Z)V
    .locals 0

    .line 2196
    iget-object p1, p1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->reload(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/ui/c;->c0:Z

    return-void
.end method

.method a(Lorg/json/JSONObject;Z)Z
    .locals 3

    const-string v0, "zindex"

    .line 2197
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2198
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2200
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2201
    iget v0, p0, Lio/dcloud/feature/ui/c;->F:I

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    .line 2203
    iput p1, p0, Lio/dcloud/feature/ui/c;->F:I

    .line 2204
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput p1, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    if-eqz p2, :cond_0

    .line 2206
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/ui/a;->g(Lio/dcloud/feature/ui/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v2
.end method

.method protected b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "barcode"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V
    .locals 5

    .line 12
    iget-boolean v0, p3, Lio/dcloud/feature/ui/c;->J:Z

    if-eqz v0, :cond_5

    .line 13
    iget-boolean v0, p3, Lio/dcloud/feature/ui/c;->K:Z

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v0, p3}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 16
    iget-boolean v0, p3, Lio/dcloud/feature/ui/c;->M:Z

    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p3, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1, p3}, Lio/dcloud/feature/ui/c;->c(Lio/dcloud/feature/ui/b;)V

    .line 21
    :cond_0
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 22
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 24
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 26
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v3

    .line 28
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "auto"

    .line 29
    :cond_2
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 30
    iget v4, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    invoke-static {v2, v4}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_0

    :cond_3
    const-string v2, "pop-out"

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x168

    .line 33
    iput v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_0

    .line 35
    :cond_4
    iget v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iput v2, v3, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    .line 41
    :goto_0
    invoke-virtual {v3, v0}, Lio/dcloud/common/adapter/util/AnimOptions;->setCloseAnimType(Ljava/lang/String;)V

    .line 42
    iput-byte v1, v3, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v1, 0x2

    .line 44
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v0, p3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, p2, v1, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_5
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p3}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 53
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 54
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    .line 57
    :cond_6
    :goto_1
    invoke-virtual {p3}, Lio/dcloud/feature/ui/c;->e()V

    return-void
.end method

.method protected b(Lio/dcloud/feature/ui/c;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->Y:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/c;->Y:Ljava/util/ArrayList;

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iput-object p0, p1, Lio/dcloud/feature/ui/c;->X:Lio/dcloud/feature/ui/c;

    .line 9
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IWebview;->setOpener(Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/ui/c;->Z:Z

    return-void
.end method

.method public b(Lio/dcloud/feature/ui/b;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Ljava/lang/String;)Z
    .locals 4

    .line 70
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 73
    iget-object v2, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 74
    instance-of v3, v2, Lio/dcloud/feature/ui/c;

    if-eqz v3, :cond_0

    .line 75
    check-cast v2, Lio/dcloud/feature/ui/c;

    invoke-virtual {v2, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 58
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 61
    iget-object v2, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 62
    instance-of v3, v2, Lio/dcloud/feature/ui/c;

    if-eqz v3, :cond_0

    check-cast v2, Lio/dcloud/feature/ui/c;

    iget-boolean v3, v2, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v2, p1, p2, p3}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method protected c(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/b;

    .line 5
    iget-object v2, v1, Lio/dcloud/feature/ui/b;->m:Ljava/lang/String;

    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method protected c(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 26
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "livepusher"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lio/dcloud/feature/ui/b;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    .line 11
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->c()B

    move-result v0

    .line 13
    instance-of v1, p1, Lio/dcloud/feature/ui/c;

    .line 15
    sget-byte v2, Lio/dcloud/feature/ui/b;->a:B

    if-ne v0, v2, :cond_1

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_0

    .line 18
    :cond_1
    sget-byte v2, Lio/dcloud/feature/ui/b;->b:B

    if-ne v0, v2, :cond_2

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_0

    .line 20
    :cond_2
    sget-byte v2, Lio/dcloud/feature/ui/b;->c:B

    if-ne v0, v2, :cond_4

    .line 21
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    if-eqz v1, :cond_3

    .line 23
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/ui/b;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/util/ViewRect;->delRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 25
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    :cond_4
    :goto_0
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 61
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 64
    iget-object v2, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 65
    instance-of v3, v2, Lio/dcloud/feature/ui/c;

    if-eqz v3, :cond_0

    check-cast v2, Lio/dcloud/feature/ui/c;

    iget-boolean v3, v2, Lio/dcloud/feature/ui/c;->G:Z

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v2, p1, p2, p3}, Lio/dcloud/feature/ui/c;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 75
    :cond_2
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    instance-of p2, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p2, :cond_4

    .line 76
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string p2, "backButton"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 78
    :cond_3
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 79
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    return v1

    .line 84
    :cond_4
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->backButtonAutoControl:Ljava/lang/String;

    const-string p2, "hide"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "[\'auto\',null]"

    if-eqz p1, :cond_5

    .line 85
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-direct {p0, p1, p2, p0}, Lio/dcloud/feature/ui/c;->d(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    return v1

    .line 87
    :cond_5
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->backButtonAutoControl:Ljava/lang/String;

    const-string p3, "quit"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 88
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object p1, p1, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p3, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p3

    const/16 v0, 0x14

    invoke-interface {p1, p2, v0, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_6
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->backButtonAutoControl:Ljava/lang/String;

    const-string p3, "close"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 90
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p0}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    return v1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public d()Lio/dcloud/common/adapter/ui/AdaFrameItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    return-object v0
.end method

.method protected d(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "maps"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected e()V
    .locals 3

    .line 222
    invoke-direct {p0}, Lio/dcloud/feature/ui/c;->i()V

    .line 223
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->X:Lio/dcloud/feature/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/dcloud/feature/ui/c;->Y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->X:Lio/dcloud/feature/ui/c;

    .line 227
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    .line 228
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/b;

    .line 230
    invoke-virtual {v2}, Lio/dcloud/feature/ui/b;->e()V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 233
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->N:Ljava/util/ArrayList;

    .line 235
    :cond_2
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->Q:Lio/dcloud/common/DHInterface/IWebview;

    .line 236
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->P:Ljava/lang/String;

    .line 237
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->R:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/common/DHInterface/IWebview;

    const/16 v1, 0x96

    .line 239
    iput v1, p0, Lio/dcloud/feature/ui/c;->b0:I

    .line 240
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->p:Lio/dcloud/common/DHInterface/IWebview;

    .line 241
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 242
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_3
    return-void
.end method

.method protected e(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "nativeobj"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "addNativeView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected f(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "videoplayer"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "appendToFrameView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 7

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "{}"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-eqz v0, :cond_1

    new-array v0, v6, [Ljava/lang/Object;

    .line 3
    iget-object v6, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    aput-object v6, v0, v5

    const-string v5, "undefined"

    aput-object v5, v0, v4

    iget-object v4, p0, Lio/dcloud/feature/ui/b;->k:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lio/dcloud/feature/ui/c;->y:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const-string v1, "(function(){return {\'uuid\':\'%s\',\'id\':%s,\'identity\':\'%s\',\'extras\':%s}})()"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v6, [Ljava/lang/Object;

    .line 5
    iget-object v6, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    aput-object v6, v0, v5

    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, p0, Lio/dcloud/feature/ui/b;->k:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lio/dcloud/feature/ui/c;->y:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v0, v2

    const-string v1, "(function(){return {\'uuid\':\'%s\',\'id\':\'%s\',\'identity\':\'%s\',\'extras\':%s}})()"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "nativeobj"

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "removeNativeView"

    const/4 v5, 0x2

    aput-object p1, v2, v5

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    aput-object v5, p1, v3

    aput-object p2, p1, v4

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/16 p1, 0xa

    invoke-interface {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v1, "rendered"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->d0:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    new-instance v0, Lio/dcloud/feature/ui/c$a;

    invoke-direct {v0, p0}, Lio/dcloud/feature/ui/c$a;-><init>(Lio/dcloud/feature/ui/c;)V

    iput-object v0, p0, Lio/dcloud/feature/ui/c;->d0:Ljava/lang/Runnable;

    .line 17
    iget v1, p0, Lio/dcloud/feature/ui/c;->b0:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    int-to-float v2, v2

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v2, v2

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    int-to-float v2, v2

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    int-to-float v2, v2

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    div-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "{top:%d,left:%d,width:%d,height:%d}"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->isWebviewCovered()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NWindow.onCallBack pEventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "yl"

    invoke-static {v4, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const-string v7, "touchstart"

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "show_loading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "titleNViewSearchInputClicked"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "titleNViewSearchInputChanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "slide_webview_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "titleNViewSearchInputConfirmed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "titleUpdate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "slide_webview_hide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "overrideUrlLoading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "popGesture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "show_animation_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "progressChanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "resize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_c
    const-string v1, "hide_loading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_d
    const-string v1, "titleNViewSearchInputFocusChanged"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_e
    const-string v1, "slideBounce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_f
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_10
    const-string v1, "dragBounce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_11
    const-string v1, "onresize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_12
    const-string v1, "listenResourceLoading"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v12, 0x0

    packed-switch v1, :pswitch_data_0

    .line 83
    sget-object v1, Lio/dcloud/feature/ui/c;->u:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 85
    iget-object v7, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v7, v7, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-static {v1, p2, v7, p0}, Lio/dcloud/feature/ui/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_7

    .line 149
    :pswitch_0
    iget-boolean p1, p0, Lio/dcloud/feature/ui/c;->J:Z

    if-eqz p1, :cond_26

    .line 150
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/ui/a;->f(Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_c

    .line 187
    :pswitch_1
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object p2, v12

    goto :goto_2

    :cond_13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    .line 188
    :pswitch_2
    invoke-direct {p0}, Lio/dcloud/feature/ui/c;->s()V

    goto/16 :goto_c

    :pswitch_3
    new-array v0, v2, [Ljava/lang/Object;

    if-nez p2, :cond_14

    const-string p2, "\'\'"

    goto :goto_3

    .line 189
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    aput-object p2, v0, v3

    const-string p2, "{title:%s}"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 190
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->l()V

    goto/16 :goto_c

    .line 222
    :pswitch_4
    invoke-direct {p0}, Lio/dcloud/feature/ui/c;->t()V

    goto/16 :goto_c

    .line 223
    :pswitch_5
    iget-object v4, p0, Lio/dcloud/feature/ui/c;->S:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->R:Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    sget v7, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_c

    .line 257
    :pswitch_6
    check-cast p2, [Ljava/lang/Object;

    .line 258
    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/String;

    .line 259
    aget-object v4, p2, v2

    .line 260
    aget-object p2, p2, v0

    check-cast p2, Lio/dcloud/common/DHInterface/IFrameView;

    .line 261
    iget-object v5, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {v5, p2}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object p2

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v4, v5, v2

    .line 263
    iget-object v1, p2, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    aput-object v1, v5, v0

    iget-object v0, p2, Lio/dcloud/feature/ui/b;->m:Ljava/lang/String;

    aput-object v0, v5, v10

    iget-object p2, p2, Lio/dcloud/feature/ui/c;->y:Lorg/json/JSONObject;

    aput-object p2, v5, v9

    const-string p2, "{type:\'%s\', result:%s, private_args:{uuid:\'%s\',id:\'%s\',extras:\'%s\'}}"

    invoke-static {p2, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_c

    .line 264
    :pswitch_7
    iget-object p1, p0, Lio/dcloud/feature/ui/c;->P:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object v0, p0, Lio/dcloud/feature/ui/c;->Q:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_15

    .line 265
    iget-object v1, p0, Lio/dcloud/feature/ui/c;->P:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 267
    :cond_15
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    move-object p1, v12

    goto :goto_4

    :cond_16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    const-string p2, "show"

    invoke-virtual {p0, p2, p1}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    :pswitch_8
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plus.webview._find__Window_By_UUID__(\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/ui/b;->m:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "{progress:%s,target:%s}"

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_c

    .line 289
    :pswitch_9
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {p1, p0}, Lio/dcloud/feature/ui/a;->d(Lio/dcloud/feature/ui/c;)V

    goto/16 :goto_c

    .line 329
    :pswitch_a
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_26

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 330
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object p2, v12

    goto :goto_5

    :cond_17
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    .line 331
    :pswitch_b
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object p2, v12

    goto :goto_6

    :cond_18
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {p0, p1, p2, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_c

    .line 370
    :pswitch_c
    invoke-virtual {p0}, Lio/dcloud/feature/ui/c;->q()V

    goto/16 :goto_c

    .line 371
    :pswitch_d
    iget-object v4, p0, Lio/dcloud/feature/ui/c;->U:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p0, Lio/dcloud/feature/ui/c;->T:Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    sget v7, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_c

    .line 87
    :cond_19
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_8
    const/4 v0, -0x1

    goto/16 :goto_9

    :sswitch_13
    const-string v0, "rendering"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_8

    :cond_1a
    const/16 v0, 0x8

    goto :goto_9

    :sswitch_14
    const-string v0, "loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_8

    :cond_1b
    const/4 v0, 0x7

    goto :goto_9

    :sswitch_15
    const-string v0, "pullToRefresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_8

    :cond_1c
    const/4 v0, 0x6

    goto :goto_9

    :sswitch_16
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v0, 0x5

    goto :goto_9

    :sswitch_17
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_8

    :cond_1e
    const/4 v0, 0x4

    goto :goto_9

    :sswitch_18
    const-string v0, "webPause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v0, 0x3

    goto :goto_9

    :sswitch_19
    const-string v1, "window_close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_8

    :sswitch_1a
    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_8

    :cond_20
    const/4 v0, 0x1

    goto :goto_9

    :sswitch_1b
    const-string v0, "webResume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_8

    :cond_21
    const/4 v0, 0x0

    :cond_22
    :goto_9
    const-string v1, "{}"

    packed-switch v0, :pswitch_data_1

    .line 118
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object p2, v12

    goto :goto_a

    :cond_23
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_a
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    .line 119
    :pswitch_e
    iget-object p2, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    invoke-virtual {p2, p0}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 120
    invoke-virtual {p0, p1, v1, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_c

    .line 121
    :pswitch_f
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object p2, v12

    goto :goto_b

    :cond_24
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    invoke-virtual {p0}, Lio/dcloud/feature/ui/b;->g()V

    goto :goto_c

    .line 123
    :pswitch_10
    iput v11, p0, Lio/dcloud/feature/ui/c;->B:I

    .line 124
    iget-object p2, p0, Lio/dcloud/feature/ui/c;->w:Lorg/json/JSONArray;

    if-eqz p2, :cond_25

    .line 125
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->x:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p2, p0, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;Ljava/lang/String;)V

    .line 127
    :cond_25
    sget-object p2, Lio/dcloud/common/util/TestUtil;->CREATE_WEBVIEW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u4ece\u52a0\u8f7d\u5b8c\u6210\u5206\u53d1loaded\u4e8b\u4ef6\u5230\u5f00\u59cb\u5206\u53d1\u4e8b\u4ef6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENTS_LOADED mUrl="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/feature/ui/c;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Main_Path"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1, v1, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_c

    .line 148
    :pswitch_11
    invoke-virtual {p0, p1, v1, v3}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_26
    :goto_c
    return-object v12

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a44d379 -> :sswitch_12
        -0x722278ad -> :sswitch_11
        -0x70efa724 -> :sswitch_10
        -0x5e176b7d -> :sswitch_f
        -0x5478a867 -> :sswitch_e
        -0x4612885d -> :sswitch_d
        -0x41b6fcc1 -> :sswitch_c
        -0x37b2634c -> :sswitch_b
        -0x14fa2439 -> :sswitch_a
        -0xfd36022 -> :sswitch_9
        -0x4efca48 -> :sswitch_8
        0x11431b9 -> :sswitch_7
        0xaffa196 -> :sswitch_6
        0x21fc2541 -> :sswitch_5
        0x3bda4fd8 -> :sswitch_4
        0x54afa424 -> :sswitch_3
        0x552e396d -> :sswitch_2
        0x5c6d66e0 -> :sswitch_1
        0x69fe15fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x46844f5f -> :sswitch_1b
        -0x416acffb -> :sswitch_1a
        -0x2eea9717 -> :sswitch_19
        -0x2baea0fe -> :sswitch_18
        0x30dd42 -> :sswitch_17
        0x5a5ddf8 -> :sswitch_16
        0x11fc9b1b -> :sswitch_15
        0x1410e13c -> :sswitch_14
        0x6da6e68c -> :sswitch_13
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/ui/c;->c0:Z

    return v0
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method public r()Lio/dcloud/common/DHInterface/IWebview;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    return-object v0
.end method
