.class public Lio/dcloud/invocation/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/invocation/c;",
            ">;>;"
        }
    .end annotation
.end field

.field static b:Lio/dcloud/invocation/a;


# instance fields
.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lio/dcloud/invocation/a;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/dcloud/invocation/a;->b:Lio/dcloud/invocation/a;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/invocation/a;->c:Ljava/util/ArrayList;

    .line 9
    sput-object p0, Lio/dcloud/invocation/a;->b:Lio/dcloud/invocation/a;

    return-void
.end method

.method private static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/Object;)Lio/dcloud/invocation/c;
    .locals 3

    .line 383
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 385
    new-instance v1, Lio/dcloud/invocation/c;

    sget-object v2, Lio/dcloud/invocation/a;->b:Lio/dcloud/invocation/a;

    invoke-direct {v1, v2, v0, p1, p2}, Lio/dcloud/invocation/c;-><init>(Lio/dcloud/invocation/a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    invoke-static {p0, p1, v1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/invocation/c;)V

    return-object v1
.end method

.method static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lio/dcloud/invocation/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 310
    const-class v2, Ljava/lang/String;

    const-string v3, "{\"type\":\"%s\", \"value\":%s, \"className\":\"%s\",\"superClassNames\":%s}"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-string v8, "\""

    const/4 v9, 0x0

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/CharSequence;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {v0}, Lio/dcloud/invocation/d;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 316
    :cond_1
    invoke-static {p1}, Lio/dcloud/invocation/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {p0, v2, p1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/Object;)Lio/dcloud/invocation/c;

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    const-string v2, "object"

    aput-object v2, p1, v9

    aput-object p0, p1, v7

    aput-object v1, p1, v5

    .line 320
    invoke-static {v0}, Lio/dcloud/invocation/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {v3, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v9}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array p1, v7, [Ljava/lang/Object;

    aput-object p0, p1, v9

    const-string p0, "plus.ios.__Tool.New(%s, true)"

    .line 321
    invoke-static {p0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 322
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-array p1, v6, [Ljava/lang/Object;

    const-string v2, "basic"

    aput-object v2, p1, v9

    aput-object p0, p1, v7

    aput-object v1, p1, v5

    .line 334
    invoke-static {v0}, Lio/dcloud/invocation/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {v3, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v9}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 339
    invoke-static {p0, v0, v1}, Lio/dcloud/invocation/a;->b(Ljava/lang/Class;Lorg/json/JSONStringer;Ljava/util/ArrayList;)V

    .line 340
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 344
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "[]"

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ";at "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "throw \'%s\';"

    invoke-static {p0, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invocation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/DHInterface/IWebview;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/invocation/c;",
            ">;"
        }
    .end annotation

    .line 375
    sget-object v0, Lio/dcloud/invocation/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 378
    sget-object v1, Lio/dcloud/invocation/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/StringBuffer;)V
    .locals 3

    .line 355
    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/CharSequence;

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-static {p2}, Lio/dcloud/invocation/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 359
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "["

    .line 361
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 363
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p2}, Lio/dcloud/invocation/d;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 364
    invoke-static {p0, v2}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, ","

    .line 366
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "]"

    .line 369
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 371
    :cond_4
    invoke-static {p1}, Lio/dcloud/invocation/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-static {p0, p2, p1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/Object;)Lio/dcloud/invocation/c;

    const-string p0, "\""

    .line 373
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 374
    :cond_5
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    return-void
.end method

.method private static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/invocation/c;)V
    .locals 0

    .line 381
    invoke-static {p0}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/util/HashMap;

    move-result-object p0

    .line 382
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 280
    invoke-static {p2}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->valueOf(Ljava/lang/String;)Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    move-result-object p2

    .line 281
    sget-object v0, Lio/dcloud/invocation/a$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance p2, Lio/dcloud/invocation/a$b;

    invoke-direct {p2, p0, p1, p3}, Lio/dcloud/invocation/a$b;-><init>(Lio/dcloud/invocation/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 304
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p3

    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p3, p2, v0}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 305
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p3

    new-instance v0, Lio/dcloud/invocation/a$c;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/invocation/a$c;-><init>(Lio/dcloud/invocation/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/ISysEventListener;)V

    invoke-interface {p3, v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :goto_0
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 6

    .line 269
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p3

    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p6}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_0

    .line 270
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "granted"

    .line 272
    invoke-virtual {p3, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "deniedPresent"

    .line 273
    invoke-virtual {p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "deniedAlways"

    .line 274
    invoke-virtual {p3, p4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 276
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p4, 0x0

    .line 278
    aget-object v1, p2, p4

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lio/dcloud/invocation/a;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void
.end method

.method static a(Ljava/lang/Class;Lorg/json/JSONStringer;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lorg/json/JSONStringer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 347
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 348
    aget-object v1, p0, v0

    .line 349
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 352
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-static {v1, p1, p2}, Lio/dcloud/invocation/a;->a(Ljava/lang/Class;Lorg/json/JSONStringer;Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p3

    const-string v1, "use_encryption"

    .line 394
    invoke-interface {p3, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 395
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "setWebContentsDebuggingEnabled"

    .line 398
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "WebView"

    .line 400
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "android.webkit.WebView"

    .line 401
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method static b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lio/dcloud/invocation/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v0}, Lio/dcloud/invocation/d;->a(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_0

    const-class v2, Ljava/lang/CharSequence;

    if-eq v0, v2, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "object"

    goto :goto_0

    :cond_0
    const-string v2, "basic"

    .line 21
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    invoke-static {p0, p1, v0, v3}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/StringBuffer;)V

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v2, p0, p1

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, p0, v3

    const/4 v2, 0x2

    aput-object v1, p0, v2

    invoke-static {v0}, Lio/dcloud/invocation/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const-string v0, "{\"type\":\"%s\", \"value\":%s, \"className\":\"%s\",\"superClassNames\":%s}"

    invoke-static {v0, p0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/Class;Lorg/json/JSONStringer;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lorg/json/JSONStringer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {p0, p1, p2}, Lio/dcloud/invocation/a;->a(Ljava/lang/Class;Lorg/json/JSONStringer;Ljava/util/ArrayList;)V

    .line 9
    :cond_1
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    :goto_1
    return-void

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/invocation/c;
    .locals 0

    .line 380
    invoke-static {p1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/dcloud/invocation/a;->a(Ljava/util/HashMap;Ljava/lang/String;)Lio/dcloud/invocation/c;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/HashMap;Ljava/lang/String;)Lio/dcloud/invocation/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/invocation/c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/dcloud/invocation/c;"
        }
    .end annotation

    .line 379
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/invocation/c;

    return-object p1
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    .line 2
    iget-object v2, v9, Lio/dcloud/invocation/a;->c:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, v9, Lio/dcloud/invocation/a;->c:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 5
    invoke-virtual {v2, v9}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_0
    const-string v2, "__Instance"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    const-string v7, "InvProxy"

    const-string v10, " method ; params="

    const/4 v11, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    .line 9
    aget-object v13, v8, v12

    .line 10
    aget-object v14, v8, v5

    .line 13
    array-length v1, v8

    if-le v1, v4, :cond_3

    aget-object v1, v8, v4

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    aget-object v1, v8, v4

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 15
    invoke-static {v1, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "type"

    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "boolean"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "value"

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "__super__constructor__"

    invoke-static {v3, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v5, v2

    :cond_2
    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_3
    move-object v8, v11

    :goto_1
    if-eqz v5, :cond_26

    .line 26
    :try_start_0
    new-instance v12, Lio/dcloud/invocation/c;

    invoke-static {v14}, Lio/dcloud/invocation/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v5, v13

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lio/dcloud/invocation/c;-><init>(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/invocation/a;Ljava/lang/Class;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 27
    invoke-static {v0, v13, v12}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/invocation/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeObject.execMethod __Instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_4
    const-string v2, "release"

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "__autoCollection"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_8

    :cond_5
    const-string v2, "getWebviewById"

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 43
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    .line 44
    aget-object v2, v8, v12

    .line 45
    invoke-static {v1, v2}, Lio/dcloud/feature/internal/sdk/SDK;->obtainWebview(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWebview()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_6
    const-string v2, "currentWebview"

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 47
    instance-of v1, v0, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v1, :cond_7

    goto/16 :goto_a

    .line 50
    :cond_7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWebview()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_8
    const-string v2, "getContext"

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 53
    aget-object v1, v8, v12

    .line 54
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 55
    invoke-static {v0, v2}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "onActivityResult"

    .line 56
    invoke-direct {v9, v0, v2, v1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    const-string v2, "importFields"

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 58
    aget-object v1, v8, v12

    .line 59
    invoke-virtual {v9, v0, v1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/invocation/c;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 61
    iget-object v2, v1, Lio/dcloud/invocation/c;->a:Lio/dcloud/invocation/a;

    invoke-virtual {v1, v0, v2}, Lio/dcloud/invocation/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/invocation/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_a
    const-string v2, "import"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 64
    aget-object v1, v8, v12

    .line 66
    invoke-static {v0, v9, v1}, Lio/dcloud/invocation/d;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/invocation/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_b
    const-string v2, "__plusGetAttribute"

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 69
    aget-object v1, v8, v12

    .line 70
    aget-object v2, v8, v5

    .line 71
    invoke-virtual {v9, v0, v1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/invocation/c;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 73
    iget-object v3, v1, Lio/dcloud/invocation/c;->b:Ljava/lang/Class;

    iget-object v1, v1, Lio/dcloud/invocation/c;->c:Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lio/dcloud/invocation/c;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 75
    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_c
    const-string v2, "__plusSetAttribute"

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 79
    aget-object v1, v8, v12

    .line 80
    aget-object v5, v8, v5

    .line 81
    aget-object v2, v8, v4

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 82
    invoke-virtual {v9, v0, v1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/invocation/c;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 84
    iget-object v3, v1, Lio/dcloud/invocation/c;->b:Ljava/lang/Class;

    iget-object v4, v1, Lio/dcloud/invocation/c;->c:Ljava/lang/Object;

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v6}, Lio/dcloud/invocation/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/invocation/a;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto/16 :goto_9

    :cond_d
    const-string v2, "implements"

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 87
    aget-object v1, v8, v12

    .line 88
    aget-object v2, v8, v5

    .line 89
    aget-object v3, v8, v4

    invoke-static {v3}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x3

    .line 90
    aget-object v4, v8, v4

    .line 91
    new-instance v5, Lio/dcloud/invocation/b;

    invoke-direct {v5, v0, v2, v3, v4}, Lio/dcloud/invocation/b;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 92
    iput-object v1, v5, Lio/dcloud/invocation/b;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {v5, v11}, Lio/dcloud/invocation/b;->a(Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a

    :cond_e
    const-string v2, "__loadDylib"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_9

    :cond_f
    const-string v2, "__release"

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_9

    :cond_10
    const-string v2, "__inheritList"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 99
    aget-object v1, v8, v12

    .line 101
    :try_start_1
    aget-object v2, v8, v5

    .line 102
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 103
    invoke-virtual {v9, v0, v2}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/invocation/c;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 105
    iget-object v0, v0, Lio/dcloud/invocation/c;->b:Ljava/lang/Class;

    invoke-static {v0}, Lio/dcloud/invocation/d;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_11
    invoke-static {v1}, Lio/dcloud/invocation/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 110
    :cond_12
    invoke-static {v1}, Lio/dcloud/invocation/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importClass "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    goto/16 :goto_a

    :cond_13
    const-string v2, "__execCFunction"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_9

    :cond_14
    const-string v2, "__newObject"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 117
    aget-object v1, v8, v12

    .line 118
    aget-object v2, v8, v5

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 120
    :try_start_2
    invoke-static {v1}, Lio/dcloud/invocation/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v9, v3, v2}, Lio/dcloud/invocation/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/invocation/a;Ljava/lang/Class;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v3

    .line 121
    invoke-static {v0, v3}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newObject "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/invocation/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NativeObject.execMethod __newObject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_15
    const-string v2, "__execStatic"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "NativeObject.execMethod "

    const-string v14, "."

    if-eqz v2, :cond_19

    .line 127
    aget-object v1, v8, v12

    .line 128
    aget-object v12, v8, v5

    .line 129
    invoke-direct {v9, v1, v12, v0}, Lio/dcloud/invocation/a;->a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v2

    if-eqz v2, :cond_16

    return-object v11

    .line 133
    :cond_16
    array-length v2, v8

    if-le v2, v4, :cond_17

    aget-object v2, v8, v4

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 134
    aget-object v2, v8, v4

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_17
    move-object v6, v11

    .line 136
    :goto_3
    invoke-static {v1}, Lio/dcloud/invocation/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_18

    .line 139
    const-class v2, Ljava/lang/String;

    move-object v4, v1

    move-object v8, v2

    goto :goto_4

    :cond_18
    move-object v8, v2

    move-object v4, v11

    :goto_4
    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v8

    move-object v5, v12

    .line 143
    :try_start_3
    invoke-static/range {v1 .. v6}, Lio/dcloud/invocation/c;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/invocation/a;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 145
    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_19
    const-string v2, "__exec"

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 152
    aget-object v1, v8, v12

    .line 153
    aget-object v2, v8, v5

    .line 154
    invoke-direct {v9, v3, v2, v0}, Lio/dcloud/invocation/a;->a(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v11

    .line 158
    :cond_1a
    aget-object v3, v8, v4

    invoke-static {v3}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 159
    invoke-virtual {v9, v0, v1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/invocation/c;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 162
    :try_start_4
    invoke-virtual {v1, v0, v2, v3}, Lio/dcloud/invocation/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 164
    invoke-static {v0, v4}, Lio/dcloud/invocation/a;->b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lio/dcloud/invocation/c;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/invocation/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto/16 :goto_a

    :cond_1b
    const-string v2, "__saveContent"

    .line 171
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 172
    aget-object v1, v8, v12

    .line 173
    aget-object v2, v8, v5

    .line 174
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v12, v0}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    goto/16 :goto_9

    :cond_1c
    const-string v2, "requestPermissions"

    .line 176
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 177
    aget-object v1, v8, v5

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 178
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 179
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 180
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 181
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    .line 182
    :goto_5
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_1f

    .line 183
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1e

    .line 193
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1d

    .line 194
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v6

    move-object/from16 v17, v7

    goto :goto_6

    .line 197
    :cond_1d
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v4, v10

    move-object v5, v14

    move/from16 v16, v6

    move-object v6, v15

    move-object/from16 v17, v7

    move-object v7, v15

    .line 198
    invoke-direct/range {v1 .. v7}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_6

    :cond_1e
    move/from16 v16, v6

    move-object/from16 v17, v7

    .line 199
    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v4, v10

    move-object v5, v14

    move-object v6, v15

    .line 200
    invoke-direct/range {v1 .. v7}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :goto_6
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v7, v17

    goto :goto_5

    :cond_1f
    move-object/from16 v17, v7

    .line 216
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_20

    return-object v11

    .line 219
    :cond_20
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Ljava/lang/String;

    .line 220
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->getRequestCode()I

    move-result v6

    new-instance v5, Lio/dcloud/invocation/a$a;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v4, p1

    move-object v0, v5

    move-object/from16 v5, p3

    move v14, v6

    move-object v6, v10

    move-object v10, v7

    move-object v7, v15

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lio/dcloud/invocation/a$a;-><init>(Lio/dcloud/invocation/a;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-static {v10, v13, v14, v0, v12}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;Z)V

    goto :goto_9

    :cond_21
    const-string v2, "checkPermission"

    .line 242
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 243
    aget-object v2, v8, v12

    .line 244
    aget-object v1, v8, v5

    .line 245
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eq v1, v4, :cond_23

    if-eq v1, v3, :cond_22

    if-eqz v1, :cond_24

    move v12, v1

    goto :goto_7

    :cond_22
    const/4 v12, -0x1

    goto :goto_7

    :cond_23
    const/4 v12, -0x2

    .line 261
    :cond_24
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{checkResult:+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_9

    .line 263
    :cond_25
    :goto_8
    aget-object v1, v8, v12

    .line 264
    invoke-static/range {p1 .. p1}, Lio/dcloud/invocation/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/invocation/c;

    if-eqz v0, :cond_26

    .line 268
    invoke-virtual {v0}, Lio/dcloud/invocation/c;->a()V

    :cond_26
    :goto_9
    move-object v3, v11

    :goto_a
    return-object v3
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "close"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    move-object p1, p2

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 5
    iget-object p1, p0, Lio/dcloud/invocation/a;->c:Ljava/util/ArrayList;

    move-object v0, p2

    check-cast v0, Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    sget-object p1, Lio/dcloud/invocation/a;->a:Ljava/util/HashMap;

    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 12
    sget-object v0, Lio/dcloud/invocation/a;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/invocation/c;

    invoke-virtual {p2}, Lio/dcloud/invocation/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
