.class public Lcom/taobao/weex/ui/component/binding/Statements;
.super Ljava/lang/Object;
.source "Statements.java"


# static fields
.field private static final dynamicLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 571
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/component/binding/Statements;->dynamicLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p0

    return-object p0
.end method

.method private static final copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "parent"
        }
    .end annotation

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->clone()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/taobao/weex/ui/component/WXComponentFactory;->newInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v3

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getBottom()F

    move-result v4

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getRight()F

    move-result v6

    .line 138
    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v7

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v8

    move-object v2, p1

    .line 137
    invoke-virtual/range {v2 .. v8}, Lcom/taobao/weex/ui/component/WXComponent;->updateDemission(FFFFFF)V

    .line 139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getExtra()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    .line 140
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_1

    .line 141
    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 142
    move-object v1, p1

    check-cast v1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 143
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 145
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 147
    invoke-static {v4, v1}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 148
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getRenderObjectPtr()J

    move-result-wide v5

    .line 149
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v7

    .line 148
    invoke-static {v5, v6, v7, v8}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeAddChildRenderObject(JJ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 155
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    :cond_2
    return-object p1
.end method

.method private static doBindingAttrsEventAndRenderChildNode(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "context",
            "updates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderContext;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    .line 357
    iget-object v3, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    const-string v4, "@isComponentRoot"

    .line 362
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v8, "lifecycle"

    const-string v9, "componentHook"

    const/4 v13, 0x0

    if-eqz v5, :cond_4

    .line 363
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "@componentProps"

    .line 364
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 365
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/dom/binding/JSONUtils;->isJSON(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "@templateId"

    .line 366
    invoke-virtual {v2, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 368
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentIds()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x5

    if-nez v14, :cond_1

    .line 371
    iget-object v14, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object v14

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v6

    iget-object v12, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    iget v7, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    invoke-virtual {v12, v7}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemId(I)J

    move-result-wide v10

    .line 371
    invoke-static {v14, v6, v10, v11}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->createVirtualComponentId(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v14

    .line 373
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    iget-object v6, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {v4, v6}, Lcom/taobao/weex/ui/component/binding/Statements;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v4

    .line 374
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v5, v10, v13

    const/4 v5, 0x1

    aput-object v8, v10, v5

    const-string v11, "create"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v14, v11, v13

    aput-object v4, v11, v5

    const/4 v5, 0x3

    aput-object v11, v10, v5

    const/4 v5, 0x4

    const/4 v11, 0x0

    aput-object v11, v10, v5

    invoke-virtual {v6, v9, v7, v11, v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 379
    invoke-virtual {v5}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 380
    invoke-virtual {v5}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 381
    invoke-virtual {v5}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 384
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentIds()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v5

    iget v6, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    invoke-virtual {v5, v6, v14, v4}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->createVirtualComponentData(ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_1

    .line 388
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentDatas()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 389
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isHasDataUpdate()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 390
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    iget-object v6, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {v4, v6}, Lcom/taobao/weex/ui/component/binding/Statements;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v4

    .line 391
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v14, v10, v13

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const-string v12, "syncState"

    const/4 v15, 0x2

    aput-object v12, v10, v15

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v14, v12, v13

    aput-object v4, v12, v11

    const/4 v11, 0x3

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v7, v12, v10}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 397
    invoke-virtual {v6}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 398
    invoke-virtual {v6}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 399
    invoke-virtual {v6}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 400
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v5

    invoke-virtual {v5, v14, v4}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateVirtualComponentData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    const/4 v5, 0x0

    .line 405
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    const-string v7, "@virtualComponentId"

    invoke-virtual {v6, v7, v14}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v14

    goto :goto_2

    .line 407
    :cond_3
    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {v4, v5}, Lcom/taobao/weex/ui/component/binding/Statements;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 411
    :goto_2
    new-instance v6, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v6}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    iput-object v6, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    if-eqz v4, :cond_5

    .line 413
    iget-object v6, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v6, v4}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 422
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 423
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v2

    const-string v4, "[[once]]"

    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getOnceComponentStates()Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/ArrayStack;

    if-nez v2, :cond_7

    .line 428
    iget-object v2, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyStack(Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Lcom/taobao/weex/el/parse/ArrayStack;)Lcom/taobao/weex/el/parse/ArrayStack;

    move-result-object v2

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getOnceComponentStates()Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_7
    iput-object v2, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 434
    :cond_8
    invoke-static/range {p0 .. p1}, Lcom/taobao/weex/ui/component/binding/Statements;->doRenderBindingAttrsAndEvent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)V

    .line 435
    instance-of v2, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v2, :cond_a

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 437
    instance-of v2, v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v2, :cond_9

    return-void

    .line 441
    :cond_9
    move-object v2, v0

    check-cast v2, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v4, 0x0

    .line 442
    :goto_5
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 443
    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v6

    move-object/from16 v7, p2

    .line 444
    invoke-static {v6, v1, v7}, Lcom/taobao/weex/ui/component/binding/Statements;->doRenderComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_5

    .line 447
    :cond_a
    iget-object v2, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    if-eq v3, v2, :cond_b

    .line 448
    iput-object v3, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    :cond_b
    if-eqz v5, :cond_c

    if-eqz v11, :cond_c

    .line 452
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v13

    const/4 v5, 0x1

    aput-object v8, v4, v5

    const-string v6, "attach"

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 453
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object v6

    iget v1, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    invoke-static {v6, v1, v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findAllComponentRefs(Ljava/lang/String;ILcom/taobao/weex/ui/component/WXComponent;)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v5, v13

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x0

    .line 452
    invoke-virtual {v2, v9, v3, v0, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public static final doInitCompontent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 185
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 193
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    .line 194
    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 195
    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 191
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "render node cann\'t find"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "render node parent cann\'t find"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public static final doRender(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->doRenderComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WeexStatementRender"

    .line 175
    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static doRenderBindingAttrsAndEvent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "context"
        }
    .end annotation

    .line 471
    iget-object p1, p1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 473
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 475
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 476
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 477
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Landroidx/collection/ArrayMap;

    move-result-object v1

    .line 478
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->renderBindingAttrs(Landroidx/collection/ArrayMap;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v1

    .line 479
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 483
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 484
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 485
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 487
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 488
    invoke-virtual {v0, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_1

    if-nez v4, :cond_0

    .line 491
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 501
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 502
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "src"

    .line 503
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v2, p0, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v2, :cond_3

    .line 506
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 508
    :cond_3
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->nativeUpdateAttrs(Ljava/util/Map;)V

    .line 510
    :goto_1
    invoke-static {}, Lcom/taobao/weex/ui/component/binding/Statements;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 513
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 518
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 519
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getBindingStyle()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 520
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getBindingStyle()Landroidx/collection/ArrayMap;

    move-result-object v1

    .line 521
    invoke-static {v1, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->renderBindingAttrs(Landroidx/collection/ArrayMap;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v1

    .line 522
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 526
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 527
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 528
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 529
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 530
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 531
    invoke-virtual {v0, v4}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_7

    if-nez v4, :cond_6

    .line 534
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 538
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 539
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 543
    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 544
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeStyles(Ljava/util/Map;)V

    .line 545
    invoke-static {}, Lcom/taobao/weex/ui/component/binding/Statements;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 546
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 551
    :cond_9
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 552
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Landroidx/collection/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 555
    :cond_a
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 556
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 557
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/weex/ui/component/binding/Statements;->getBindingEventArgs(Lcom/taobao/weex/el/parse/ArrayStack;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 559
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method

.method private static final doRenderComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)I
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "context",
            "updates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderContext;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v6, "[[match]]"

    .line 217
    invoke-virtual {v4, v6}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/taobao/weex/el/parse/Token;

    if-eqz v7, :cond_0

    .line 218
    invoke-virtual {v4, v6}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/weex/el/parse/Token;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v9, "[[repeat]]"

    .line 220
    invoke-virtual {v4, v9}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v10, :cond_1

    .line 221
    invoke-virtual {v4, v9}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_16

    .line 225
    invoke-virtual {v3, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v11

    const-string v12, "@expression"

    .line 226
    invoke-virtual {v4, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/taobao/weex/el/parse/Token;

    const-string v14, "WXRecyclerTemplateList"

    if-eqz v13, :cond_12

    .line 227
    invoke-virtual {v4, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/taobao/weex/el/parse/Token;

    const-string v13, "@index"

    .line 228
    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "@alias"

    .line 229
    invoke-virtual {v4, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v12, :cond_2

    .line 232
    iget-object v15, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v12, v15}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    .line 234
    :goto_2
    instance-of v15, v12, Ljava/util/List;

    if-nez v15, :cond_3

    instance-of v8, v12, Ljava/util/Map;

    if-eqz v8, :cond_13

    :cond_3
    if-eqz v15, :cond_4

    .line 239
    check-cast v12, Ljava/util/List;

    const/4 v8, 0x0

    goto :goto_3

    .line 241
    :cond_4
    check-cast v12, Ljava/util/Map;

    .line 242
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    move-object/from16 v24, v12

    move-object v12, v8

    move-object/from16 v8, v24

    .line 244
    :goto_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 246
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/16 v16, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v8, :cond_5

    .line 250
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    add-int/lit8 v16, v16, 0x1

    move-object v10, v5

    move-object/from16 v5, v18

    goto :goto_5

    .line 255
    :cond_5
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    :goto_5
    move/from16 v18, v16

    if-eqz v13, :cond_6

    .line 258
    invoke-interface {v15, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v4, :cond_7

    .line 262
    invoke-interface {v15, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 264
    :cond_7
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 266
    :goto_6
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 267
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v15}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    :cond_8
    if-eqz v7, :cond_9

    .line 272
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7, v5}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    move/from16 v16, v18

    goto :goto_4

    .line 278
    :cond_9
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v5

    if-ge v11, v5, :cond_c

    .line 279
    invoke-virtual {v3, v11}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    .line 281
    invoke-static {v5, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->isCreateFromNodeStatement(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v5, 0x0

    :cond_a
    if-eqz v5, :cond_b

    .line 285
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    .line 286
    invoke-virtual {v5, v10}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_e

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 293
    invoke-static {v0, v3}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v5

    .line 294
    invoke-virtual {v5, v10}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 295
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 296
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/taobao/weex/dom/binding/WXStatement;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/taobao/weex/dom/binding/WXStatement;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_d
    invoke-virtual {v3, v5, v11}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    move-object/from16 v21, v8

    move-object v10, v9

    .line 300
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getRenderObjectPtr()J

    move-result-wide v8

    move-object/from16 v23, v12

    move-object/from16 v22, v13

    .line 301
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v12

    .line 300
    invoke-static {v8, v9, v12, v13}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeAddChildRenderObject(JJ)V

    .line 302
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "statements copy component tree used "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    move-object/from16 v21, v8

    move-object v10, v9

    move-object/from16 v23, v12

    move-object/from16 v22, v13

    .line 307
    :cond_f
    :goto_8
    invoke-static {v5, v1, v2}, Lcom/taobao/weex/ui/component/binding/Statements;->doBindingAttrsEventAndRenderChildNode(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)V

    add-int/lit8 v11, v11, 0x1

    .line 309
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 310
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5, v15}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    :cond_10
    if-nez v4, :cond_11

    .line 313
    iget-object v5, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v5}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    :cond_11
    move-object v9, v10

    move/from16 v16, v18

    move-object/from16 v8, v21

    move-object/from16 v13, v22

    move-object/from16 v12, v23

    goto/16 :goto_4

    .line 318
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not call vfor block, for pre compile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_13
    :goto_9
    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v1

    if-ge v11, v1, :cond_15

    .line 322
    invoke-virtual {v3, v11}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v1

    .line 323
    invoke-static {v1, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->isCreateFromNodeStatement(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_a

    :cond_14
    const/4 v2, 0x1

    .line 326
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 328
    :cond_15
    :goto_a
    invoke-virtual {v3, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    sub-int/2addr v11, v0

    return v11

    :cond_16
    if-eqz v7, :cond_18

    .line 333
    iget-object v3, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v7, v3}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    .line 334
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    return v3

    :cond_17
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    invoke-virtual {v0, v4}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    goto :goto_b

    :cond_18
    const/4 v3, 0x1

    .line 342
    :goto_b
    invoke-static/range {p0 .. p2}, Lcom/taobao/weex/ui/component/binding/Statements;->doBindingAttrsEventAndRenderChildNode(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)V

    return v3
.end method

.method public static getBindingEventArgs(Lcom/taobao/weex/el/parse/ArrayStack;Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stack",
            "bindings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 645
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    const-string v2, "@binding"

    if-eqz v1, :cond_1

    .line 646
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x0

    .line 647
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 648
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 649
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 650
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/el/parse/Token;

    if-eqz v5, :cond_0

    .line 651
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/el/parse/Token;

    .line 652
    invoke-virtual {v3, p0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 653
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 655
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_1
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 659
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 660
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/el/parse/Token;

    if-eqz v3, :cond_2

    .line 661
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/el/parse/Token;

    .line 662
    invoke-virtual {p1, p0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 663
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 665
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 668
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 681
    instance-of v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v2, "@isComponentRoot"

    .line 685
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 686
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "@componentProps"

    .line 687
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 688
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2

    const-string p0, "@virtualComponentId"

    .line 689
    invoke-virtual {v0, p0}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 693
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/ui/component/binding/Statements;->getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "mParent"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    .line 109
    :goto_0
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_2
    return-void
.end method

.method private static isCreateFromNodeStatement(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderNode",
            "component"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMainThread()Z
    .locals 2

    .line 675
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->isRenderPtrEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->parseStatements()V

    .line 82
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->parseStatements()V

    .line 83
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->parseStatements()V

    .line 85
    :cond_1
    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2

    .line 86
    check-cast p0, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 87
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 89
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/ui/component/binding/Statements;->parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static renderBindingAttrs(Landroidx/collection/ArrayMap;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindAttrs",
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap;",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 574
    sget-object v0, Lcom/taobao/weex/ui/component/binding/Statements;->dynamicLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 576
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 579
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 580
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 582
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 583
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 584
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "@binding"

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 586
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/el/parse/Token;

    if-eqz v5, :cond_3

    .line 588
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 589
    invoke-virtual {v2, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 590
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 591
    :cond_3
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_2

    .line 592
    check-cast v2, Lcom/alibaba/fastjson/JSONArray;

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 594
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 595
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 596
    instance-of v7, v6, Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 597
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 600
    :cond_4
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 601
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/taobao/weex/el/parse/Token;

    if-eqz v7, :cond_6

    .line 603
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/el/parse/Token;

    .line 604
    invoke-virtual {v6, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v6, ""

    .line 608
    :cond_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 611
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_8

    .line 613
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " warn too big string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WXRecyclerTemplateList"

    invoke-static {v4, v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_8
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

.method public static renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "props",
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 625
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 626
    new-instance v0, Landroidx/collection/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 627
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 628
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 629
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 630
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "@binding"

    .line 631
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/taobao/weex/el/parse/Token;

    if-eqz v5, :cond_0

    .line 633
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 634
    invoke-virtual {v2, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 635
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
