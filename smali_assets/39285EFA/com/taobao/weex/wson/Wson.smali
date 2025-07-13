.class public Lcom/taobao/weex/wson/Wson;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/wson/Wson$Builder;,
        Lcom/taobao/weex/wson/Wson$Parser;
    }
.end annotation


# static fields
.field private static final ARRAY_TYPE:B = 0x5bt

.field private static final BOOLEAN_TYPE_FALSE:B = 0x66t

.field private static final BOOLEAN_TYPE_TRUE:B = 0x74t

.field private static final GLOBAL_STRING_CACHE_SIZE:I = 0x800

.field private static final IS_NATIVE_LITTLE_ENDIAN:Z

.field private static final MAP_TYPE:B = 0x7bt

.field private static final METHOD_PREFIX_GET:Ljava/lang/String; = "get"

.field private static final METHOD_PREFIX_IS:Ljava/lang/String; = "is"

.field private static final NULL_TYPE:B = 0x30t

.field private static final NUMBER_BIG_DECIMAL_TYPE:B = 0x65t

.field private static final NUMBER_BIG_INTEGER_TYPE:B = 0x67t

.field private static final NUMBER_DOUBLE_TYPE:B = 0x64t

.field private static final NUMBER_FLOAT_TYPE:B = 0x46t

.field private static final NUMBER_INT_TYPE:B = 0x69t

.field private static final NUMBER_LONG_TYPE:B = 0x6ct

.field private static final STRING_TYPE:B = 0x73t

.field public static final WriteMapNullValue:Z = false

.field private static fieldsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final globalStringBytesCache:[Ljava/lang/String;

.field private static final localCharsBufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static methodsCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static specialClass:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    .line 757
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    const/16 v0, 0x800

    new-array v0, v0, [Ljava/lang/String;

    .line 758
    sput-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    .line 768
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    .line 769
    new-instance v0, Landroidx/collection/LruCache;

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    .line 770
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/taobao/weex/wson/Wson;->getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->localCharsBufferCache:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/taobao/weex/wson/Wson;->IS_NATIVE_LITTLE_ENDIAN:Z

    return v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->globalStringBytesCache:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Landroidx/collection/LruCache;
    .locals 1

    .line 50
    sget-object v0, Lcom/taobao/weex/wson/Wson;->specialClass:Landroidx/collection/LruCache;

    return-object v0
.end method

.method private static final getBeanFields(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "targetClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 802
    sget-object v0, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    .line 804
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 806
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 807
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_1

    .line 813
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 815
    :cond_2
    sget-object p1, Lcom/taobao/weex/wson/Wson;->fieldsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private static final getBeanMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "targetClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 774
    sget-object v0, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 778
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p1, v2

    .line 779
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 782
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    goto :goto_1

    .line 785
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    .line 786
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "is"

    .line 787
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 788
    :cond_2
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_4

    .line 791
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getBeanMethod JSONField Annotation Not Handled, Use toJSON"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 794
    :cond_5
    sget-object p1, Lcom/taobao/weex/wson/Wson;->methodsCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p0, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static final parse([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    :try_start_0
    new-instance v1, Lcom/taobao/weex/wson/Wson$Parser;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([BLcom/taobao/weex/wson/Wson$1;)V

    .line 99
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Parser;->access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;

    move-result-object p0

    .line 100
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Parser;->access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "parseWson"

    .line 103
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final toWson(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 116
    :cond_0
    new-instance v1, Lcom/taobao/weex/wson/Wson$Builder;

    invoke-direct {v1, v0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>(Lcom/taobao/weex/wson/Wson$1;)V

    .line 117
    invoke-static {v1, p0}, Lcom/taobao/weex/wson/Wson$Builder;->access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B

    move-result-object p0

    .line 118
    invoke-static {v1}, Lcom/taobao/weex/wson/Wson$Builder;->access$500(Lcom/taobao/weex/wson/Wson$Builder;)V

    return-object p0
.end method
