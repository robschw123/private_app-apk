.class Lcom/alibaba/fastjson/JSONPath$RefOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 0

    .line 3200
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 3201
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 3202
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 3206
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    .line 3212
    :cond_0
    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_1

    return p4

    .line 3216
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    invoke-interface {v0, p1, p2, p2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3218
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/Long;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/Short;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/Byte;

    if-eqz p2, :cond_11

    .line 3219
    :cond_2
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    .line 3221
    instance-of v0, p3, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_a

    instance-of v0, p3, Ljava/lang/Long;

    if-nez v0, :cond_a

    instance-of v0, p3, Ljava/lang/Short;

    if-nez v0, :cond_a

    instance-of v0, p3, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 3238
    :cond_3
    instance-of v0, p3, Ljava/math/BigDecimal;

    if-eqz v0, :cond_11

    .line 3239
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3241
    check-cast p3, Ljava/math/BigDecimal;

    invoke-virtual {p1, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    .line 3242
    sget-object p2, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    return p4

    :pswitch_0
    if-lez p1, :cond_4

    const/4 p4, 0x1

    :cond_4
    return p4

    :pswitch_1
    if-ltz p1, :cond_5

    const/4 p4, 0x1

    :cond_5
    return p4

    :pswitch_2
    if-gez p1, :cond_6

    const/4 p4, 0x1

    :cond_6
    return p4

    :pswitch_3
    if-gtz p1, :cond_7

    const/4 p4, 0x1

    :cond_7
    return p4

    :pswitch_4
    if-eqz p1, :cond_8

    const/4 p4, 0x1

    :cond_8
    return p4

    :pswitch_5
    if-nez p1, :cond_9

    const/4 p4, 0x1

    :cond_9
    return p4

    .line 3222
    :cond_a
    :goto_0
    check-cast p3, Ljava/lang/Number;

    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v2

    .line 3224
    sget-object p3, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_1

    goto :goto_1

    :pswitch_6
    cmp-long p3, v2, p1

    if-gez p3, :cond_b

    const/4 p4, 0x1

    :cond_b
    return p4

    :pswitch_7
    cmp-long p3, v2, p1

    if-gtz p3, :cond_c

    const/4 p4, 0x1

    :cond_c
    return p4

    :pswitch_8
    cmp-long p3, v2, p1

    if-lez p3, :cond_d

    const/4 p4, 0x1

    :cond_d
    return p4

    :pswitch_9
    cmp-long p3, v2, p1

    if-ltz p3, :cond_e

    const/4 p4, 0x1

    :cond_e
    return p4

    :pswitch_a
    cmp-long p3, v2, p1

    if-eqz p3, :cond_f

    const/4 p4, 0x1

    :cond_f
    return p4

    :pswitch_b
    cmp-long p3, v2, p1

    if-nez p3, :cond_10

    const/4 p4, 0x1

    :cond_10
    return p4

    .line 3261
    :cond_11
    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
