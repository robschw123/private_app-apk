.class public Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

.field protected mProperty:Lio/dcloud/nineoldandroids/util/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 2
    new-instance v0, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    .line 11
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v4, Ljava/lang/Float;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v4, v1, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v4, v1, v7

    .line 12
    const-class v8, Ljava/lang/Double;

    const/4 v9, 0x4

    aput-object v8, v1, v9

    const-class v8, Ljava/lang/Integer;

    const/4 v10, 0x5

    aput-object v8, v1, v10

    .line 13
    sput-object v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    aput-object v4, v1, v3

    .line 15
    const-class v8, Ljava/lang/Integer;

    aput-object v8, v1, v5

    aput-object v2, v1, v6

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v8, v1, v7

    .line 16
    const-class v11, Ljava/lang/Float;

    aput-object v11, v1, v9

    const-class v11, Ljava/lang/Double;

    aput-object v11, v1, v10

    .line 17
    sput-object v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v8, v0, v3

    .line 19
    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v5

    aput-object v2, v0, v6

    aput-object v4, v0, v7

    .line 20
    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v9

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v10

    .line 21
    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sput-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lio/dcloud/nineoldandroids/util/Property;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 90
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 101
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 165
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 11
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 22
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PropertyValuesHolder"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p3

    .line 11
    :try_start_1
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 15
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t find no-arg method for property "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    new-array p3, v2, [Ljava/lang/Class;

    .line 23
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 24
    sget-object v3, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    goto :goto_0

    .line 25
    :cond_1
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 26
    sget-object v3, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_0

    .line 27
    :cond_2
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    sget-object v3, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Class;

    .line 31
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 33
    :goto_0
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_4

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t find setter/getter for property "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with value type "

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object p1, v1

    :goto_3
    return-object p1

    .line 61
    :cond_4
    aget-object v7, v3, v6

    aput-object v7, p3, v4

    .line 64
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    iput-object v7, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 73
    :catch_2
    :try_start_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 76
    iput-object v7, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    :catch_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static varargs ofFloat(Lio/dcloud/nineoldandroids/util/Property;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Lio/dcloud/nineoldandroids/util/Property;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/nineoldandroids/util/Property<",
            "*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Lio/dcloud/nineoldandroids/util/Property;[Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 2

    .line 11
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    .line 13
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;)V

    return-object p1

    .line 14
    :cond_0
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    .line 15
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;)V

    return-object p1

    .line 18
    :cond_1
    new-instance v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;)V

    .line 19
    iput-object v0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    const/4 p0, 0x0

    .line 20
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v1
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 2

    .line 1
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofKeyframe([Lio/dcloud/nineoldandroids/animation/Keyframe;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/IntKeyframeSet;)V

    return-object p1

    .line 4
    :cond_0
    instance-of v1, v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    .line 5
    new-instance p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {p1, p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;)V

    return-object p1

    .line 8
    :cond_1
    new-instance v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object v0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    const/4 p0, 0x0

    .line 10
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v1
.end method

.method public static varargs ofObject(Lio/dcloud/nineoldandroids/util/Property;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/dcloud/nineoldandroids/util/Property;",
            "Lio/dcloud/nineoldandroids/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 4
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lio/dcloud/nineoldandroids/util/Property;)V

    .line 5
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 7
    invoke-direct {p0, p1, p3, p4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 16
    throw p1
.end method

.method private setupValue(Ljava/lang/Object;Lio/dcloud/nineoldandroids/animation/Keyframe;)V
    .locals 3

    const-string v0, "PropertyValuesHolder"

    .line 1
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 9
    :cond_1
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-void
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    .line 5
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->clone()Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    .line 6
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    goto :goto_0

    .line 5
    :cond_0
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-eqz v0, :cond_3

    .line 13
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1, v0}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    .line 1
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lio/dcloud/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 6
    :try_start_0
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofInt([I)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void
.end method

.method public varargs setKeyframes([Lio/dcloud/nineoldandroids/animation/Keyframe;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe;

    const/4 v2, 0x0

    .line 3
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    :goto_0
    if-lt v2, v0, :cond_0

    .line 7
    new-instance p1, Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-direct {p1, v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void

    .line 8
    :cond_0
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    return-void
.end method

.method public setProperty(Lio/dcloud/nineoldandroids/util/Property;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-string v2, "set"

    invoke-direct {p0, p1, v0, v2, v1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    const-string v1, "PropertyValuesHolder"

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 6
    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    invoke-virtual {v3, p1}, Lio/dcloud/nineoldandroids/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No such property ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") on target object "

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Trying reflection instead"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mProperty:Lio/dcloud/nineoldandroids/util/Property;

    .line 19
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 20
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 21
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 23
    :cond_3
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Keyframe;

    .line 24
    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Keyframe;->hasValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 25
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v4, :cond_6

    .line 26
    invoke-direct {p0, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 29
    :cond_6
    :try_start_1
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/nineoldandroids/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->mKeyframeSet:Lio/dcloud/nineoldandroids/animation/KeyframeSet;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
