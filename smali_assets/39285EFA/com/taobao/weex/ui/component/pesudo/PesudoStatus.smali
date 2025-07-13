.class public Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;
.super Ljava/lang/Object;
.source "PesudoStatus.java"


# static fields
.field static final CLASS_ACTIVE:I = 0x0

.field static final CLASS_DISABLED:I = 0x3

.field static final CLASS_ENABLED:I = 0x2

.field static final CLASS_FOCUS:I = 0x1

.field private static final SET:I = 0x1

.field private static final UNSET:I


# instance fields
.field private mStatuses:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 37
    iput-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 49
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getStatuses()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":active"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x3

    .line 88
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":disabled"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ":focus"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isSet(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clz"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setStatus(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clz",
            "status"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aput p2, v0, p1

    return-void
.end method

.method public setStatus(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clzName",
            "status"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, ":focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, ":enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, ":disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, ":active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 70
    :pswitch_0
    invoke-virtual {p0, v3, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 67
    :pswitch_1
    invoke-virtual {p0, v2, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 64
    :pswitch_2
    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 61
    :pswitch_3
    invoke-virtual {p0, v4, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58a71440 -> :sswitch_3
        -0x58589f4a -> :sswitch_2
        0x2913b5c7 -> :sswitch_1
        0x68ca68de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clzName",
            "status",
            "pesudoStyles",
            "originalStyles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 108
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 113
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p2, :cond_0

    .line 115
    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 125
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p3
.end method
